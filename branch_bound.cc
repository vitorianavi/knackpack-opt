#include <ilcplex/ilocplex.h>
#include <cstdio>

#define N_VAR 7

float maior_atual=0;

int isIntegerSolutions(IloNumArray sol) {
	int validate;

	for(int i = 0; i < N_VAR; i++) {
		validate = sol[i];
		if(validate != sol[i]) {
			return i;
		}
	}
	return -1;
}

void printModelSol(IloModel model, IloNumArray sol) {
	printf("---------Modelo----------\n\n");
	for (IloModel::Iterator it(model); it.ok(); ++it) {
		std::cout << *it << "\n";
	}

	printf("----------Soluçao---------\n");
	for(int i = 0; i < N_VAR; i++) {
		printf("x%d = %lf\n", i, sol[i]);
	}
}

IloCplex *branchBound(IloEnv env, IloCplex& cplex, IloModel model, IloNumVarArray& x) {
	int index, status;
	IloCplex *problem1, *problem2;
	IloModel model_aux1(env), model_aux2(env);
	IloNumArray sol(env);

	status = cplex.solve();
	if(status) {
		cplex.getValues(sol, x);
		index = isIntegerSolutions(sol);

		if(index != -1) {
			for (IloModel::Iterator it(model); it.ok(); ++it) {
				model_aux1.add(*it);
				model_aux2.add(*it);
			}

			model_aux1.add(x[index] <= floor(sol[index]));
			model_aux2.add(x[index] >= ceil(sol[index]));

			problem1 = new IloCplex(model_aux1);
			problem2 = new IloCplex(model_aux2);
		
			problem1 = branchBound(env, *problem1, model_aux1, x);
			problem2 = branchBound(env, *problem2, model_aux2, x);

			if(problem2) {
				maior_atual = problem2->getObjValue();
				return problem2;

			} else if(problem1) {
				maior_atual = problem1->getObjValue();
				return problem1;
			}

		} else {
			if(cplex.getObjValue() > maior_atual) {
				maior_atual = cplex.getObjValue();
				return &cplex;
			}
		}
	}
	return NULL;
}

int main() {
	IloEnv env;

	try {
		IloNumVarArray x(env, 7, 0, 1, ILOFLOAT);
		IloModel model(env);
		IloNumArray sol(env);
		model.add(IloMaximize(env, 70 * x[0] + 20 * x[1] + 39 * x[2] + 37 * x[3] + 7 * x[4] + 5 * x[5] + 10 * x[6]));
		model.add(31 * x[0] + 10 * x[1] + 20 * x[2] + 19 * x[3] + 4 * x[4] + 3 * x[5] + 6 * x[6] <= 50);

		IloCplex *problem = new IloCplex(model);
		problem = branchBound(env, *problem, model, x);

		printf("----------FINAL----------\n\n");

		printf("%f\n", maior_atual);

		problem->getValues(sol, x);
		printf("----------Soluçao---------\n");
		for(int i = 0; i < N_VAR; i++) {
			printf("x%d = %lf\n", i, sol[i]);
		}
		env.end();
	}
	catch (IloException& ex) {
		std::cout << "Erro: " << ex << std::endl;
	}
}