library(SEIRNet)

test_that("The mechanism is implemented correctly",{
  n <- c(1000,10000)
  for (x in n) {
    g <- creatg(x,0.02)
    g <- setattr(g, x, 30)
    expect_equal(unlist(sum(graph_attr(iteration(g,0.01,0.01,0.02), "R")[[1]])) > 0, TRUE)
  }
})
