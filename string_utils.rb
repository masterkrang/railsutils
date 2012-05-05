class StringUtils
  
  def self.random_string(length = 8)
    (0...length).map{ ('a'..'z').to_a[rand(26)] }.join
  end
  
end