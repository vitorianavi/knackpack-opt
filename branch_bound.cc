#include <ilcplex/ilocplex.h>
#include <cstdio>

int Z = 0;
IloNumArray* sol_geral;

IloNumArray* branchBound(int* z, IloModel model, IloEnv env, IloNumVarArray x){
	float z_novo;
	int verifica = 0, z1, z2;

	IloCplex cplex(model);
	bool status;
	bool achou_real = false;
	IloNumArray sol(env);
	IloNumArray *sol1, *sol2;

	sol1 = new IloNumArray(env);
	sol2 = new IloNumArray(env);

	for (IloModel::Iterator it(model); it.ok(); ++it){
		std::cout << "\n" << *it << "\n";
	}

	std::cout << "\n";

	status = cplex.solve();
	cplex.getValues(sol, x);
	z_novo = cplex.getObjValue();

	if(status == true){
		if(z_novo > Z){
			for(int i = 0; i < 7; i++){
				verifica = sol[i];
				if(verifica != sol[i]){
					IloModel model_2(env);
					for (IloModel::Iterator it(model); it.ok(); ++it){
					   model_2.add(*it);
					}
					model.add(x[i] <= floor(sol[i]));
					model_2.add(x[i] >= ceil(sol[i]));

					sol1 = branchBound(&z1, model, env, x);
					sol2 = branchBound(&z2, model_2, env, x);
					//achou_real = true;

					if(z1 > z2 && sol1 != NULL) {
						*z = z1;
						Z = *z;
						return sol1;
					} else if(z2 > z1 && sol2 != NULL){
						*z = z2;
						Z = *z;
						return sol2;
					}

					break;			
				}
			}

			/*if(!achou_real){
				Z = z_novo;

			}*/

		}

		printf("objetivo = %lf\n", z_novo);
		for(int i = 0; i < 7; i++){
			printf("x%d = %lf\n", i, sol[i]);
		}
	}

	return NULL;
}

int main() {
	IloEnv env;
	int verifica = 0;
	int i = 0, z_aux;

	try {
		IloNumVarArray x(env, 7, 0, 1, ILOFLOAT);
		IloModel model(env);
		model.add(IloMaximize(env, 70 * x[0] + 20 * x[1] + 39 * x[2] + 37 * x[3] + 7 * x[4] + 5 * x[5] + 10 * x[6]));
		model.add(31 * x[0] + 10 * x[1] + 20 * x[2] + 19 * x[3] + 4 * x[4] + 3 * x[5] + 6 * x[6] <= 50);

		
		branchBound(&z_aux, model, env, x);

		env.end();
	}
	catch (IloException& ex) {
		std::cout << "Erro: " << ex << std::endl;
	}
}