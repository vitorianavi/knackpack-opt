#include <ilcplex/ilocplex.h>
#include <cstdio>

int main() {
	IloEnv env;
	try {
		IloNumVarArray x(env, 4, 0, IloInfinity, ILOFLOAT);
		IloModel model(env);
		model.add(IloMaximize(env, 150 * x[0] + 500 * x[1] + 400 * x[2] + 200 * x[3]));
		model.add(x[0] + 4 * x[1] + 3 * x[2] + x[3] <= 50);
		model.add(x[0] + x[1] + x[2] + 2 * x[3] <= 75);
		IloCplex cplex(model);
		bool status;
		IloNumArray sol(env);
		status = cplex.solve();
		
		if(status == true){
			cplex.getValues(sol, x);
			printf("Funcao objetivo = %.2lf\n\n", cplex.getObjValue());
			printf("x0 = %.2lf\n", sol[0]);
			printf("x1 = %.2lf\n", sol[1]);
			printf("x2 = %.2lf\n", sol[2]);
			printf("x3 = %.2lf\n", sol[3]);
		}
		else{
			printf("Erro ao resolver!\n");
		}
		env.end();
	}
	catch (IloException& ex) {
		std::cout << "Erro: " << ex << std::endl;
	}
}