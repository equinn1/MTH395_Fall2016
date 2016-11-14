//Estimate the probability of success in binomial trials
data {
  int N;                        //sample size
  int trials[N];                //number of trials for this data point
  int y[N];                     //y is the number of successes for this data point
}
parameters {
  real<lower=0, upper=1> p;     //probability of success p
}
model {
  p ~ uniform(0,1);             //uniform prior for p
  y ~ binomial(trials,p);
}


