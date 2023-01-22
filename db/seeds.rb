puts "🌱 Seeding spices..."

# Seed your database here
Post.create([
    {
        title: "My Very First Post",
        date: "2022-06-04",
        description: "Today I started writing this first post on my newly created blog at BlogSpace. I'm pretty thrilled that I was able to create this from scratch! I guess all this studying really made a huge difference."
    }
])

User.create([
    {
        username: "janeur_ng"
    }
])

puts "✅ Done seeding!"
