module UserModelUtils

  def self.authenticate(email, password)
      user = find_by_email(email)
      return user if user && user.authenticated?(password)
  end
  
  def authenticated?(password)
      self.hashed_password == encrypt(password)
  end

end