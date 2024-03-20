library(quantrra)

## A fixed distribition with 'parameter' length = 1 works as expected
ob <- quantrra::ra_sample(1, 3)
ex <- c(1, 1, 1)
stopifnot(identical(ob, ex))

## Make sure that a distribution that has text still works:
set.seed(1)
ob <- quantrra::ra_sample("poisson(3)",  3)
ex <- c(2L, 2L, 3L)
stopifnot(identical(ob, ex))

## Check that we throw an error when length x > 1
ob <- tools::assertError(ra_sample(c(1, 2), 3))[[1]]$message
ex <- "identical(length(x), 1L) is not TRUE"
stopifnot(identical(ob, ex))
