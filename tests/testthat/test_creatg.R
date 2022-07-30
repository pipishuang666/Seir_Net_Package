library(SEIRNet)

test_that("the graph is created sucessfully",{
  n <- c(1000,10000)
  for (x in n) {
    expect_equal(unlist(sum(V(creatg(x,0.02)))) > 0, TRUE)
  }
})
