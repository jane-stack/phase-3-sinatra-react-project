puts "🌱 Seeding spices..."

User.destroy_all
Post.destroy_all

# Seed your database here
User.create([
    {
        username: "janeur_ng"
    }
])

Post.create([
    {
        title: "My Very First Post",
        date: "2022-06-04",
        description: "Today I started writing this first post on my newly created blog at BlogSpace. I'm pretty thrilled that I was able to create this from scratch! I guess all this studying really made a huge difference.",
        user_id: User.first.id
    }
])

puts "✅ Done seeding!"
