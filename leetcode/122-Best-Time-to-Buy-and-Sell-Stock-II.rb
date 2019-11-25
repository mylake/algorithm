# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.empty?
  return 0 if prices.length == 1

  result = 0

  for i in 1...prices.length do
    res = prices[i] - prices[i-1]
    result += res if res > 0
  end

  result
end
