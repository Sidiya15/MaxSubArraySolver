
naive_solver <- function(v)
{
  max <- -Inf
  start <- 0
  end <- 0
  n <- length(v)
  for (i in 1:n)
  {
    runningSum <- 0
    for (j in i:n)
    {
      runningSum <- runningSum + v[j]
      if (runningSum > max){
        max <- runningSum
        start <- i
        end <- j
      }
    }
  }
  return (list(max = max, start= start, end = end))
}

