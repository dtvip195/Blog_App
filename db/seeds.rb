#Create User
User.create!(name: "Blog của tui",
             email: "tranlethanhdat@gmail.com",
             password: "123456",
             password_confirmation: "123456",
             role: 1,
             avatar: Faker::Avatar.image)

#Create Categories
Category.create!(name: "Chuyện Coding")
Category.create!(name: "Hôm nay học gì?")
Category.create!(name: "Vài Chuyện Tinh Linh")

#Create Topics
Topic.create!(category_id: "1",
              name: "Series Chuyện Đi Học")
Topic.create!(category_id: "1",
              name: "Series Chuyện Thực Tập")
Topic.create!(category_id: "1",
              name: "Series Chuyện Đi Làm")
Topic.create!(category_id: "2",
              name: "Series Hướng Dẫn Chơi Guitar")
Topic.create!(category_id: "2",
              name: "Series Lập Trình Ruby")
Topic.create!(category_id: "2",
              name: "Series Lập Trình Android")
Topic.create!(category_id: "3",
              name: "Review sách")
Topic.create!(category_id: "3",
              name: "Review Vài Bộ Phim Boom Tấn")
Topic.create!(category_id: "3",
              name: "Tán Gái Truyền Kì")
Topic.create!(category_id: "3",
              name: "Điểm Hẹn Hò Ở Đà Nẵng")

#Create Hashtags
Hashtag.create!(hashtag: "#coding")
Hashtag.create!(hashtag: "#tangai")
Hashtag.create!(hashtag: "#guitar")
Hashtag.create!(hashtag: "#review")
Hashtag.create!(hashtag: "#khoahoc")
Hashtag.create!(hashtag: "#dihoc")

#Create Posts
3.times do |n|
  content = Faker::Lorem.sentence(100)
  Post.create!(topic_id: 1,
               user_id: 1,
               title: "Chuyện Đi Học Cấp #{n+1}",
               content: content,
               image: "viet-nam.jpg")
end
3.times do |n|
  content = Faker::Lorem.sentence(100)
  Post.create!(topic_id: 2,
               user_id: 1,
               title: "Chuyện Thực Tập FSoft #{n+1}",
               content: content,
               image: "viet-nam.jpg")
end
3.times do |n|
  content = Faker::Lorem.sentence(100)
  Post.create!(topic_id: 3,
               user_id: 1,
               title: "Chuyện Đi Làm Framgia #{n+1}",
               content: content,
               image: "viet-nam.jpg",
               views: "#{n+10}")
end
3.times do |n|
  title = "Guitar Căn Bản #{n+1}"
  content = Faker::Lorem.sentence(100)
  Post.create!(topic_id: 4,
               user_id: 1,
               title: title,
               content: content,
               image: "viet-nam.jpg",
               views: "#{n+15}")
end
3.times do |n|
  title = "Ruby Căn Bản #{n+1}"
  content = Faker::Lorem.sentence(100)
  Post.create!(topic_id: 5,
               user_id: 1,
               title: title,
               content: content,
               image: "viet-nam.jpg",
               views: "#{n+9}")
end
3.times do |n|
  title = "Review Bố Già #{n+1}"
  content = Faker::Lorem.sentence(100)
  Post.create!(topic_id: 7,
               user_id: 1,
               title: title,
               content: content,
               image: "viet-nam.jpg",
               views: "#{n+10}")
end

3.times do |n|
  PostsHashtag.create!(hashtag_id: 6,
                       post_id: "#{n+1}")
end

6.times do |n|
  PostsHashtag.create!(hashtag_id: 1,
                       post_id: "#{n+4}")
end

6.times do |n|
  PostsHashtag.create!(hashtag_id: 5,
                       post_id: "#{n+10}")
end

3.times do |n|
  PostsHashtag.create!(hashtag_id: 4,
                       post_id: "#{n+16}")
end

3.times do |n|
  PostsHashtag.create!(hashtag_id: 1,
                       post_id: "#{n+13}")
end
