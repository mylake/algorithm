# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s&.length != t&.length
  s_hash = {}
  t_hash = {}

  s.each_char do |ss|
    s_hash[ss] = s_hash[ss].to_i + 1
  end

  t.each_char do |tt|
    t_hash[tt] = t_hash[tt].to_i + 1
  end

  return s_hash == t_hash
end
