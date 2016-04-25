#include <ilcplex/ilocplex.h>
#include <cstdio>

int main() {
	IloEnv env;
	try {
		IloNumVarArray x(env, 7, 0, IloInfinity, ILOFLOAT);
		IloModel model(env);
		model.add(IloMaximize(env, 70 * x[0] + 20 * x[1] + 39 * x[2] + 37 * x[3] + 7 * x[4] + 5 * x[5] + 10 * x[6]));
		model.add(31 * x[0] + 10 * x[1] + 20 * x[2] + 19 * x[3] + 4 * x[4] + 3 * x[5] + 6 * x[6] <= 50);
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
			printf("x1 = %.2lf\n", sol[4]);
			printf("x2 = %.2lf\n", sol[5]);
			printf("x3 = %.2lf\n", sol[6]);
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