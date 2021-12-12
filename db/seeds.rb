users = [
  { username: "ayanfe", avatar_url: "/images/user_icon/ayanfe.jpg", email: "ty@ty.ca", password: "12345" },
  { username: "sola", avatar_url: "/images/user_icon/sola.jpg", email: "thn@ty.ca", password: "password" },
  { username: "pearl", avatar_url: "/images/user_icon/shemilolola.jpg", email: "that@thisis.ng", password: "ytrewq" }
]

cutestagram_posts = [
  { photo_url: "/images/img_09.JPG"},
  { photo_url: "/images/img_02.JPG"},
  { photo_url: "/images/img_01.JPG"}
]

puts "Seeding database..."

# create Users and CutestagramPosts
users.each_with_index do |user, index|
  # create new User
  user_record = User.create(user)
  # get a cutestagram_post
  cutestagram_post = cutestagram_posts[index]
  # modify cutestagram_post's user_id from created record
  cutestagram_post[:user_id] = user_record.id
  # create new CutestagramPost
  CutestagramPost.create(cutestagram_post)
end

puts "Seeding complete."