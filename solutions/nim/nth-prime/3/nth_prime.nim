# You really don't need to understand this proc.
# It just returns an integer square root, for a more optimized code.
proc isqrt(n: int): int =
  if n < 0:
    raise newException(ValueError, "Negative number")
  if n == 0 or n == 1:
    return n

  var
    low = 1
    high = n
    ans = 0

  while low <= high:
    let mid = (low + high) div 2
    let sqr = mid * mid

    if sqr == n:
      return mid
    elif sqr < n:
      low = mid + 1
      ans = mid
    else:
      high = mid - 1

  return ans

proc prime*(n: int): int =
  var primes = @[2]
  if n <= 0:
    raise newException(ValueError, "this prime position doesn't exist.")

  var
    candidate = primes[^1]
    prime_counter = 1
    limit = isqrt(candidate)
    is_prime = false

  while prime_counter < n:
    candidate += 1
    if candidate mod 2 == 0: continue

    is_prime = false
    for p in primes:
      if candidate mod p == 0:
        break
      elif p > limit:
        is_prime = true
        break

    if is_prime:
      primes.add(candidate)
      prime_counter += 1
      limit = isqrt(candidate)

  result = primes[^1]
