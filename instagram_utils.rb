class InstagramUtils
  
  # IMAGE_MEDIUM =
  
  CLIENT_ID = "dc46a995086945599c31024df4f0a094"
  CLIENT_SECRET = "6f601b286ad2407fb0aeb9b195a86ad0"
  
  REDIRECT_URI = "http://0.0.0.0:3000"
  
  AUTHORIZATION_URL = "https://api.instagram.com/oauth/authorize/?client_id=#{CLIENT_ID}&redirect_uri=#{REDIRECT_URI}&response_type=code"
  
  ACCESS_TOKEN_URL = "https://api.instagram.com/oauth/access_token"
    GRANT_TYPE = "grant_type=authorization_code"
  
  
  def self.get_access_token(code) 
    url = "#{ACCESS_TOKEN_URL}?client_id=#{CLIENT_ID}&client_secret=#{CLIENT_SECRET}&#{GRANT_TYPE}&redirect_uri=#{REDIRECT_URI}&code=#{code}"
    puts "------------------------" + url
    HTTParty.get url
  end
  
  def self.search_by_tag(tag)  
    url = "https://api.instagram.com/v1/tags/search?q=#{tag}&access_token=17015177.f59def8.6ca1264619334ccc95d0e1e85e5a102c"
    
  end
  
  def self.get_popular_tags 
    
  end
  
end