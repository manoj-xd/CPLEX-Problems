/*********************************************
 * OPL 12.6.0.0 Model
 * Author: LENOVO
 * Creation Date: 26-Jul-2020 at 11:25:47 AM
 *********************************************/
using CP;

//sets
int n = ...;
range O = 1..n;

//parameters 
float hr[O] = ...;
int cost[O] = ...;

//decision variables
dvar int+ x[O];

//objective function 
dexpr float profit = sum(i in O)(x[i]*150 - cost[i]*x[i]);

maximize profit;

//constraints

subject to{
forall(i in O)
  VEGOIL:
  sum(i in O: i<=2)x[i] <= 200;
  
forall(i in O)
  NONVOIL:
  sum(i in O: 3<=i<=5)x[i] <= 250;
  
 forall(i in O)
   Hardness1:
  sum(i in O) x[i]* hr[i] <= 6*sum(i in O)x[i];  
  
 forall(i in O)
   Hardness2:
  sum(i in O) x[i]* hr[i] >= 3*sum(i in O)x[i];    
  
}  


  
