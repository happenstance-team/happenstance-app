User.destroy_all
Conversation.destroy_all
Message.destroy_all
Interest.destroy_all
UserInterest.destroy_all

yoann = User.create!(email: "yoann@happenstance.co", password: "azertyuiop", first_name: "Yoann", avatar_url: "http://i.imgur.com/CvK0VkI.jpg")
sarah = User.create!(email: "sarah@happenstance.co", password: "azertyuiop", first_name: "sarah", avatar_url: "http://i.imgur.com/jOGeCVC.jpg")
alexandre = User.create!(email: "alexandre@happenstance.co", password: "azertyuiop", first_name: "Alexandre", avatar_url: "http://i.imgur.com/2jFvkJu.jpg")
happbot = User.create!(email: "happbot@happenstance.co", password: "azertyuiop", first_name: "Happbot", avatar_url: "https://pbs.twimg.com/profile_images/659236694575616000/aF21-Wxz.jpg")
lisa = User.create!(email: "lisa@happenstance.co", password: "azertyuiop", first_name: "Lisa", avatar_url: "https://ph-avatars.imgix.net/175314/original?auto=format&fit=crop&crop=faces&w=220&h=220")

c1 = Conversation.create!(user1: yoann, user2: sarah)
c2 = Conversation.create!(user1: yoann, user2: alexandre)
c3 = Conversation.create!(user1: yoann, user2: happbot)
c4 = Conversation.create!(user1: sarah, user2: alexandre)
c5 = Conversation.create!(user1: sarah, user2: happbot)
c6 = Conversation.create!(user1: alexandre, user2: happbot)
c7 = Conversation.create!(user1: yoann, user2: lisa)

m1 = Message.create!(user: yoann, conversation: c1, content: "Hey")
m2 = Message.create!(user: yoann, conversation: c2, content: "Hello")
m3 = Message.create!(user: yoann, conversation: c3, content: "What's up?")
m4 = Message.create!(user: sarah, conversation: c1, content: "Salut Yoann")
m5 = Message.create!(user: alexandre, conversation: c2, content: "Yo!")
m6 = Message.create!(user: happbot, conversation: c3, content: "Tu peux pas test")
m7 = Message.create!(user: sarah, conversation: c4, content: "Salut alexandre")
m8 = Message.create!(user: sarah, conversation: c5, content: "Salut Happbot")
m9 = Message.create!(user: alexandre, conversation: c6, content: "Hey!")
m10 = Message.create!(user: alexandre, conversation: c4, content: "Hello")
m11 = Message.create!(user: happbot, conversation: c5, content: "Quoi de neuf ?")
m12 = Message.create!(user: happbot, conversation: c6, content: "Tu fais quoi demain ?")
m12 = Message.create!(user: yoann, conversation: c7, content: "Yo!")

i1 = Interest.create!(name: "books")
i2 = Interest.create!(name: "music")
i3 = Interest.create!(name: "coffee")

UserInterest.create!(user: yoann, interest: i1)
UserInterest.create!(user: yoann, interest: i2)
UserInterest.create!(user: yoann, interest: i3)

Match.create!(user1: yoann, user2: lisa)