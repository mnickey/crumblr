# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Cheese Cake
post1 = Post.new
post1.title = "Epic Cheese Cake"
post.kind = "image"
post1.content = 'http://2.bp.blogspot.com/-deAWAjfeg00/TiXub_qWspI/AAAAAAAADNA/q-mZNHTZ9Zo/s1600/cheesecake5.jpg'
post1.save
2.times do
	post1.hearts.create
end

# Ovenly
post2 = Post.new(title: "Ovenly", kind: 'text')
post2.content = 'Awesome bakery in Brooklyn. Find them here: http://oven.ly/'
post2.save
5.times{ post2.hearts.create }

# Chocolate Chip Goodness
post3 = Post.create(
	title: 'Chocolate Chip Goodness',
	kind: 'image',
	content: 'http://farm4.static.flickr.com/3473/3304831464_6373d4df34.jpg'
)
8.times { post3.hearts.create }

# Tiger pouncing
post4 = Post.create(
	title: "Rawr",
	kind: "image",
	content: "http://images.nationalgeographic.com/wpf/media-live/photos/000/036/cache/diving-tiger_3629_990x742.jpg"
)
post4.save
10.times { post4.hearts.create }