User.destroy_all
# u1 = User.create :email => 'carmenminikus@gmail.com', :password => 'chicken', :password_confirmation => 'chicken'
# u2 = User.create :email => 'trishatov@zoho.com', :password => 'chicken', :password_confirmation => 'chicken'
# u3 = User.create :email => 'wilcoface@gmail.com', :password => 'chicken', :password_confirmation => 'chicken'


Post.destroy_all
p1 = Post.create :title => 'Chicken Curry', :description => 'spicy mango chicken curry, has bits of peas and carrots inside', :location => 'Australia Street, Newtown', :vegetarian => 'No', :portion => '2', :image => "http://www.bobturf.org/jeannie/images/JaipurPalace_MangoChickenCurry.jpg"
p2 = Post.create :title => 'Boss Fried Rice', :description => 'epic chili Taiwanese fried rice, there is baby shrimps, brocolo, mince beef, shallots, 2 whole garlics, and egg in the mix. Very tasty. Must pickup before 10pm' , :location => 'Harris Street, Ultimo', :vegetarian => 'No', :portion => '4', :image => "http://f.tqn.com/y/chinesefood/1/W/x/T/1/ground-beef-fried-rice-resized.jpg"
p3 = Post.create :title => 'Hug box of canned baked beans', :description => 'I have a huge box of canned bake beans. Come eat them with me, or feel free to take some home.' , :location => 'near Marrickville station', :vegetarian => 'yes', :portion => '20', :image => "http://i.dailymail.co.uk/i/pix/2015/09/13/23/2C480A5700000578-0-image-m-3_1442182728997.jpg"

Review.destroy_all
r1 = Review.create :rating => "9", :comments => "This women is a killer cook with a heart of gold!"
r2 = Review.create :rating => "7", :comments => "Super spicy!!! my lips nearly fell off, neverthless a fulfilling meal."
r3 = Review.create :rating => "2", :comments => "The food was off by the time I brough it home.."
