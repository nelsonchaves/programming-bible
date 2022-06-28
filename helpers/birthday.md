  def age(user)
    time_ago_in_words(user.bday)
  end
  
  = age(User.first)
