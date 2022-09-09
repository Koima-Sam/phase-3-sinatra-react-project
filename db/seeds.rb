puts "🌱 Seeding spices..."

# Seed your database here
# <<<<------Creating Users------->>>>
10.times do 
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        password: Faker::Alphanumeric.alphanumeric(number: 4)
    )
end
#<<<<<----Creating Scholarships------>>>>
joe = Scholarship.create(name: "Google Women Techmaker Scholarship",organizer:"Google",link:"https://www.womentechmakers.com/initiatives",deadline:"3rd October 2022",description:"This program provides a scholarship to the eligible students and a chance to connect with women in tech via a retreat to a Google HQ")
Scholarship.create(name:"Women Techmakers Engineering Fellows Program",organizer:"Talent Sprint + Google",link:"https://wtef.talentsprint.com/#selection",deadline:"10th August 2022",description:"The program is a combination of summer coding bootcamps, live online classes, ongoing mentorship, certification and team-based projects to enhance problem-solving and computational thinking. It also provides exemplary participants with a chance to get career opportunities with high end product companies including Google")
Scholarship.create(name:"GHCI Student Scholarship",organizer:"Anitab.org",deadline:"5th October 2022",link:"https://ghcindia.anitab.org/ghci-20-student-scholarships/",description:"Scholarship gives the recipient opportunity to attend the GHCI conference and career fair and includes the full conference registration fee + travel +meal")
gh = Scholarship.create(name:"Charpak Exchange Scholarship",organizer:"Embassy of France",link:"Charpak Exchange Scholarship",deadline:"8th November 2022",description:"Charpak Scholarship 2019-2020: Charpak Scholarship is an initiative of the Embassy of France. This scholarship offered to Indian students every year who wants to pursue their higher education in France.")


# Creating saved scholarships
Saved_Scholarship.create(scholarship_id: joe.id, user_id:3)
Saved_Scholarship.create(scholarship_id: gh.id, user_id:3)

puts "✅ Done seeding!"
