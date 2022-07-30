library(SEIRNet)

test_that("the attribute is changed sucessfully",{
  n <- c(1000,10000)

  for (x in n) {
    g <- creatg(x,0.02)
    expect_equal(unlist(sum(V(setattr(g,x,30))$Infectious)) == 30, TRUE)
  }
})
