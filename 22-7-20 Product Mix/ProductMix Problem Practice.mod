/*********************************************
 * OPL 12.6.0.0 Model
 * Author: LENOVO
 * Creation Date: 25-Jul-2020 at 6:12:29 PM
 *********************************************/
using CP;
int p = ...;
range P = 1..p;

//parameters
int pr[P] = ...;
int gt[P] = ...;
int dt[P] = ...;

//decision variable 
dvar int+ x[P];

//objective function
dexpr float profit = sum(i in P) pr[i]*x[i];

maximize profit;

//constraints
subject to {
 
 forall(i in P)
   ghours:
   sum(i in P)gt[i]*x[i] <= 288; 

 forall(i in P)
   dhours:
   sum(i in P)dt[i]*x[i] <= 192; 
 
  forall(i in P)
   ehours:
   sum(i in P)20*x[i] <= 384; 

}


