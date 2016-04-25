#include <ilcplex/ilocplex.h>
#include <cstdio>

int Z = 0;
IloNumArray* sol_geral;

IloNumArray* branchBound(int* z, IloModel model, IloEnv env, IloNumVarArray x){
	float z_novo;
	int verifica = 0;
	

	IloCplex cplex(model);
	bool status;
	bool achou_real = false;
	IloNumArray sol(env);
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

					branchBound(model, env, x);
					branchBound(model_2, env, x);
					achou_real = true;

					break;			
				}
			}

			/*if(!achou_real){
				Z = z_novo;

			}*/

		}else{
			return NULL;
		}
	}

	return sol;
}

int main() {
	IloEnv env;
	int verifica = 0;
	int i = 0;

	try {
		IloNumVarArray x(env, 7, 0, IloInfinity, ILOFLOAT);
		IloModel model(env);
		model.add(IloMaximize(env, 70 * x[0] + 20 * x[1] + 39 * x[2] + 37 * x[3] + 7 * x[4] + 5 * x[5] + 10 * x[6]));
		model.add(31 * x[0] + 10 * x[1] + 20 * x[2] + 19 * x[3] + 4 * x[4] + 3 * x[5] + 6 * x[6] <= 50);
		

		while(status == true){
			verifica = sol[i];
			if(){

			}
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