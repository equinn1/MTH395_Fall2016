//three uniforms
data {
  int N;
  vector[N] y;
}
model {
    y ~ uniform(0,1);
}
generated quantities {
  vector[N] z1;
  vector[N] z2;
  vector[N] z3;
  vector[N] z4;
  vector[N] z12;
  for (i in 1:N) {
    z1[i] = uniform_rng(0,1); 
    z2[i] = uniform_rng(0,1)+uniform_rng(0,1); 
    z3[i] = uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1); 
    z4[i] = uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1); 
    z12[i] = uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1)+uniform_rng(0,1); 
  }
}

