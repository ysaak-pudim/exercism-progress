import std/math

# consider that this proc is a high optimized algorithm
# (yeah, it actually isn't)
proc isqrt(n: int): int =
  return sqrt(n.toFloat).toInt

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
