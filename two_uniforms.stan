//two uniforms
data {
  int N;
  vector[N] y1;
  vector[N] y2;
}
model {
    y1 ~ uniform(0,1);
    y2 ~ uniform(0,1);
}
generated quantities {
  vector[N] z;
  for (i in 1:N) {
    z[i] = uniform_rng(0,1)+uniform_rng(0,1);    
  }

}
