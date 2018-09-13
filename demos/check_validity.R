mu <- 0
sigma <- 3
alpha <- -1
beta <- 2
B <- 10e4

rbenchmark::benchmark(sample_truncnorm <-
  sapply(seq_len(B), function(b) truncnorm::rtruncnorm(1, alpha, beta, mu, sigma)), replications = 1)

rbenchmark::benchmark(sample_rtnorm <-
  sapply(seq_len(B), function(b) rtnorm::rtnorm(alpha, beta, mu, sigma)), replications = 1)

mean(sample_truncnorm)
mean(sample_rtnorm)
var(sample_truncnorm)
var(sample_rtnorm)

mu <- 0
sigma <- 3
alpha <- 5
beta <- Inf
B <- 10e4

rbenchmark::benchmark(sample_truncnorm <-
                        sapply(seq_len(B), function(b) truncnorm::rtruncnorm(1, alpha, beta, mu, sigma)), replications = 1)

rbenchmark::benchmark(sample_rtnorm <-
                        sapply(seq_len(B), function(b) rtnorm::rtnorm(alpha, beta, mu, sigma)), replications = 1)

mean(sample_truncnorm)
mean(sample_rtnorm)
var(sample_truncnorm)
var(sample_rtnorm)