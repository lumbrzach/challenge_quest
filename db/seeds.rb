# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Achievement.destroy_all
Relationship.destroy_all
Challenge.destroy_all
User.all 
UserAchievement.destroy_all
Attempt.destroy_all
a1 = Achievement.create(
    name: "First Base", 
    description: "Successfully created your Challenge Quest Profile")

a2 = Achievement.create(
    name: "You're not a cupcake",
    description: "Completed first challenge")

a3 = Achievement.create(
    name: "Not bad rookie",
    description: "Completed 5 challenges")

a4 = Achievement.create(
    name: "You got guts",
    description: "Completed 10 challenges"
)

a5 = Achievement.create(
    name: "WHO THE HELL ARE YOU?",
    description: "Completed 15 challenges"
)

c1 = Challenge.create(
    name: "Furry blue Hedgehog",
    description: "Run a mile within 6 minutes or less."
)

c2 = Challenge.create(
    name: "Nathan would be proud",
    description: "Eat 20 hotdogs within the span of 20 minutes."
)

c3 = Challenge.create(
    name: "I AM MACHINE",
    description: "Stay awake for 24 hours straight."
)

c4 = Challenge.create(
    name: "KOBE",
    description: "Make 30 straight free throws."
)

c5 = Challenge.create(
    name: "Paranormal Specialist",
    description: "Spend the night at a nortorious paranormal location."
)

dylan = User.create(
    name: "Dylan Harris",
    username: "DH_05",
    password_digest: "Nunu22",
    bio: "Hello! My name is Dylan and I hope you're ready to take on my challenges",
    image: "https://uploads-learn.s3.amazonaws.com/uploads/identities/learn_account/avatar/cdc72733-3575-4310-87fc-8d9bc994f539/avatar.jpeg"
)

zach = User.create(
    name: "Zach Parker",
    username: "lumbrzach",
    password_digest: "ZachAttack",
    bio: "Prepare for my challenges!",
    image: "https://avatars.githubusercontent.com/u/50035946"
)

cat = User.create(
    name: "Cat Cherubin",
    username: "KitCat",
    password_digest: "Meow",
    bio: "You're definitely not ready!",
    image: "https://uploads-learn.s3.amazonaws.com/uploads/identities/learn_account/avatar/273aedf5-a36c-4eb6-9763-4917a1cee80e/avatar.jpeg"
)


try1 = Attempt.create(
    user_id: dylan.id,
    challenge_id: c5.id
)

try2 = Attempt.create(
    user_id: dylan.id,
    challenge_id: c3.id
)

try3 = Attempt.create(
    user_id: zach.id,
    challenge_id: c5.id
)

try4 = Attempt.create(
    user_id: zach.id,
    challenge_id: c2.id
)

user_acheivement1 = UserAchievement.create(
    user_id: dylan.id, 
    achievement_id: a2.id
)

user_acheivement1 = UserAchievement.create(
    user_id: dylan.id, 
    achievement_id: a4.id
)

user_acheivement1 = UserAchievement.create(
    user_id: zach.id,
    achievement_id: a1.id
)

user_acheivement1 = UserAchievement.create(
    user_id: zach.id,
    achievement_id: a3.id
)

Relationship.create(
    user_id: zach.id,
    friend_id: dylan.id
)

Relationship.create(
    user_id: dylan.id,
    friend_id: zach.id
)

# Ask zach about relationships table