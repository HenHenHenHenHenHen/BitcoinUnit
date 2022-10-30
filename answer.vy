@external
def sum2(nums: uint256[5]) -> uint256:
  sum: uint256 = 0
  for i in range(0, 2):
    sum += nums[i]
  return sum
