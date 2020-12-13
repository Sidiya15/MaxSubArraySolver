
kadane_solution <- function(v)
{
  n = length(v)
  start = 0
  end = 0
  globalMax = -Inf
  max = -Inf
  for (i in 1:n)
  {
    if (v[i] > max + v[i])
    {
      start = i
      max = v[i]
    }
    else
    {
      max = max + v[i]
    }
    if (globalMax < max)
    {
      globalMax = max
      end = i
    }
  }
  return (list(globalMax = globalMax, start = start, end= end))
}
