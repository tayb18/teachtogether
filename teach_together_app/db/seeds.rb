User.delete_all
UnitPlan.delete_all
Network.delete_all
Forum.delete_all
Comment.delete_all

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
user5 = User.create({
  first_name: "Bob", 
  last_name: "Johnson",
  email: "email5@email.com",
  password: "password",
  password_confirmation: "password"
  })
user6 = User.create({
  first_name: "Trisha", 
  last_name: "Yearwood",
  email: "email6@email.com",
  password: "password",
  password_confirmation: "password"
  })
user7 = User.create({
  first_name: "John", 
  last_name: "Jacob",
  email: "email7@email.com",
  password: "password",
  password_confirmation: "password"
  })

network1 = Network.create({
  network_name: "9th Grade Sp.Ed. Teachers",
  admin_id: user1.id
  })
network2 = Network.create({
  network_name: "Anna's Network",
  admin_id: user2.id
  })
network3 = Network.create({
  network_name: "Other Network",
  admin_id: user1.id
  })

forum1 = Forum.create({
  title: "Adding & Subtracting Fractions Unit",
  body: "Hey guys, welcome to the forum for the upcoming unit on adding and subtracting fractions. I wanted to start the conversation on our unit for the month of November...",
  author: user1.id, 
  network_id: network1.id
  })

comment1 = Comment.create({
  author: user2.first_name,
  body: "I think adding and subtracting fractions is so straightforward, this unit should be a breeze to plan!",
  forum_id: forum1.id
  })

comment2 = Comment.create({
  author: user3.first_name,
  body: "I'm glad you're so confident, maybe some of that can rub off on me...",
  forum_id: forum1.id
  })
 
unitplan1 = UnitPlan.create({
  title: 'Adding & Subtracting Fractions',
  user_id: user1.id,
  network_id: network1.id,
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
unitplan3 = UnitPlan.create({
  title: 'Prime Numbers',
  user_id: user2.id,
  network_id: network1.id,
  document_url: "https://www.nsa.gov/academia/_files/2013_cdu_summaries/primary-fractions.pdf",
  is_public?: true,
  author: user2.first_name,
  grade: "Third Grade",
  subject: "Math",
  start: "February 17, 2016",
  ends: "March 23, 2016",
  description: "This unit is intended to help teach my third graders the basics of Prime Numbers.",
  big_idea: "Prime numbers are numbers that cannot be reduced further.",
  essential_question: "What is a prime number?",
  standard: "CCSS.MATH.CONTENT.5.NF.A.1: Add and subtract fractions with unlike denominators (including mixed numbers) by replacing given fractions with equivalent fractions in such a way as to produce an equivalent sum or difference of fractions with like denominators. For example, 2/3 + 5/4 = 8/12 + 15/12 = 23/12. (In general, a/b + c/d = (ad + bc)/bd.)",
  swbat: "Identify all prime numbers up to 100.",
  formal_assessment: "Exit Tickets, Weekly Unit Quiz, Unit Assessment",
  informal_assessment: "Teacher Observation, Student Responses, Participation",
  key_vocabulary: "Numerator, Denominator, Reciprocal, Least Common Denominator",
  material: "Scissors, glue, pen, paper, ruler, brains"
  })

lessonplan1 = LessonPlan.create({
  title: 'Prime Numbers Introduction',
  user_id: user1.id,
  network_id: network1.id,
  document_url: "https://www.nsa.gov/academia/_files/2013_cdu_summaries/primary-fractions.pdf",
  is_public?: true,
  author: user1.first_name,
  grade: "Third Grade",
  subject: "Math",
  date_and_time: "Monday, February 17th, 2016 9:00-9:55 a.m.",
  standard: "CCSS.MATH.CONTENT.5.NF.A.1: Add and subtract fractions with unlike denominators (including mixed numbers) by replacing given fractions with equivalent fractions in such a way as to produce an equivalent sum or difference of fractions with like denominators. For example, 2/3 + 5/4 = 8/12 + 15/12 = 23/12. (In general, a/b + c/d = (ad + bc)/bd.)",
  objective: "Be able to define a prime number.",
  essential_question: "What is a prime number?",
  assessment: "Classwork, participation and exit ticket responses.",
  vocabulary: "Numerator, Denominator, Reciprocal, Least Common Denominator",
  material: "Scissors, glue, pen, paper, ruler, brains",
  introduction: "We will begin the lesson by practicing reducing nmbers. I will then give students a few numbers that can't be reduced, and go on to explain that this means that number is 'Prime'",
  learning_plan: "During the mini-lesson, students will follow along and take notes as I define prime number and give them various examples, teaching them how to identify them for themselves. Students will then split into small groups for the daily math activity. Each group will receive cards with different numbers on them. Students will have to show their work to determine whether the number is prime or not.",
  closing_summary: "Students will show understanding through their participation in class, their classwork and their exit ticket responses. We will close the activity by having students volunteer to smmarize what we did that period and what we learned through our learning activities."
  })

network1.users.push(user1)
network1.users.push(user2)
network1.users.push(user3)
network1.users.push(user4)

network2.users.push(user5)
network2.users.push(user6)
network2.users.push(user7)
network2.users.push(user2)