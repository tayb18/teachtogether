User.delete_all

user1 = User.create({
  first_name: "Taylor", 
  last_name: "Basso",
  email: "taylorpbasso@gmail.com",
  password: "password",
  password_confirmation: "password"
  })