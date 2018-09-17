
rbenchmark::benchmark("truncnorm" = {sapply(seq_len(10e4), function(b) truncnorm::rtruncnorm(1, 2, 3, 0, 1))}, 
                      "rtnorm" = {sapply(seq_len(10e4), function(b) rtnorm::rtnorm(2, 3, 0, 1))},
                      "msm::rtnorm" = {sapply(seq_len(10e4), function(b) msm::rtnorm(1, 0, 1, 2, 3))},
                      replications = 1, order = "relative")

rbenchmark::benchmark("truncnorm" = {sapply(seq_len(10e4), function(b) truncnorm::rtruncnorm(1, 5, 7, 0, 1))}, 
                      "rtnorm" = {sapply(seq_len(10e4), function(b) rtnorm::rtnorm(5, 7, 0, 1))},
                      "msm::rtnorm" = {sapply(seq_len(10e4), function(b) msm::rtnorm(1, 0, 1, 5, 7))},
                      replications = 1, order = "relative")


rbenchmark::benchmark("truncnorm" = {sapply(seq_len(10e4), function(b) truncnorm::rtruncnorm(1, 1, 2, 0, 1))}, 
                      "rtnorm" = {sapply(seq_len(10e4), function(b) rtnorm::rtnorm(1, 2, 0, 1))},
                      "msm::rtnorm" = {sapply(seq_len(10e4), function(b) msm::rtnorm(1, 0, 1, 1, 2))},
                      replications = 1, order = "relative")