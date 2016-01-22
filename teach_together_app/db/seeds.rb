User.delete_all
UnitPlan.delete_all
Network.delete_all

user1 = User.create({
  first_name: "Taylor", 
  last_name: "Basso",
  email: "taylorpbasso@gmail.com",
  password: "password",
  password_confirmation: "password"
  })
user2 = User.create({
  first_name: "Anna", 
  last_name: "Rankin",
  email: "anna@gmail.com",
  password: "password",
  password_confirmation: "password"
  })
user3 = User.create({
  first_name: "Maddie", 
  last_name: "Bucheit",
  email: "email3@email.com",
  password: "password",
  password_confirmation: "password"
  })
user4 = User.create({
  first_name: "Jess", 
  last_name: "Less",
  email: "email4@email.com",
  password: "password",
  password_confirmation: "password"
  })

network1 = Network.create({
  network_name: "9th Grade Sp.Ed. Teachers",
  admin_id: user1.id
  })

unitplan1 = UnitPlan.create({
  title: 'Adding & Subtracting Fractions',
  user_id: user1.id,
  document_url: "https://www.nsa.gov/academia/_files/2013_cdu_summaries/primary-fractions.pdf",
  is_public?: true,
  author: user1.first_name,
  grade: "Third Grade",
  subject: "Math",
  start: "Januray 20, 2016",
  ends: "February 15, 2016",
  description: "This unit is intended to help teach my third graders the basics of adding and subtracting fractions.",
  big_idea: "Fractions represent parts of a whole.",
  essential_question: "How is adding fractions useful?",
  standard: "CCSS.MATH.CONTENT.5.NF.A.1: Add and subtract fractions with unlike denominators (including mixed numbers) by replacing given fractions with equivalent fractions in such a way as to produce an equivalent sum or difference of fractions with like denominators. For example, 2/3 + 5/4 = 8/12 + 15/12 = 23/12. (In general, a/b + c/d = (ad + bc)/bd.)",
  swbat: "Add and subtract fractions with uncommon denominators and reduce as appropriate.",
  formal_assessment: "Exit Tickets, Weekly Unit Quiz, Unit Assessment",
  informal_assessment: "Teacher Observation, Student Responses, Participation",
  key_vocabulary: "Numerator, Denominator, Reciprocal, Least Common Denominator",
  material: "Scissors, glue, pen, paper, ruler, brains"
  })

unitplan2 = UnitPlan.create({
  title: 'Multiplying & Divtracting Fractions',
  user_id: user2.id,
  document_url: "https://www.nsa.gov/academia/_files/2013_cdu_summaries/primary-fractions.pdf",
  is_public?: true,
  author: user2.first_name,
  grade: "Third Grade",
  subject: "Math",
  start: "Januray 20, 2016",
  ends: "February 15, 2016",
  description: "This unit is intended to help teach my third graders the basics of adding and subtracting fractions.",
  big_idea: "Fractions represent parts of a whole.",
  essential_question: "How is adding fractions useful?",
  standard: "CCSS.MATH.CONTENT.5.NF.A.1:  Add and subtract fractions with unlike denominators (including mixed numbers) by replacing given fractions with equivalent fractions in such a way as to produce an equivalent sum or difference of fractions with like denominators. For example, 2/3 + 5/4 = 8/12 + 15/12 = 23/12. (In general, a/b + c/d = (ad + bc)/bd.)",
  swbat: "Add and subtract fractions with uncommon denominators and reduce as appropriate.",
  formal_assessment: "Exit Tickets, Weekly Unit Quiz, Unit Assessment",
  informal_assessment: "Teacher Observation, Student Responses, Participation",
  key_vocabulary: "Numerator, Denominator, Reciprocal, Least Common Denominator",
  material: "Scissors, glue, pen, paper, ruler, brains"
  })

network1.users.push(user1)
network1.users.push(user2)
network1.users.push(user3)
network1.users.push(user4)