puts "🌱 Seeding spices..."

# Seed your database here
Article.create(title:"Why Deli Sandwiches Taste Better Than Yours" ,content:"A great sandwich is more than just meat, cheese and a schmear! There's even science behind why sandwiches tend to taste better when they're not made by you. (Long story short: When you make a sandwich, you imagine eating it, which actually makes you less hungry for it—more on this later.) We had a deli owner reveal the reasons why deli sandwiches are indeed so tasty. Plus, we've included tips on how you can replicate professionally made sandwiches at home.",category_id:1,author_id:1, comment_id:1,like_id:1,bookmark_id:1,user_id:5,date_posted:"12th nov 2014")  

Article.create(title:"Don’t Trash Your Old Phone—Give It a Second Life",content:"The original iPhone SE is a great little phone, and I love it. It has a headphone jack—remember those? It fits in a butt pocket. It was announced in the Obama era.

Sure, the first one I owned, which I purchased in 2017, had only 16GB of storage. And yes, I was forced to stop using it after a terrifying incident in which it refused to update to the latest iOS, even after I deleted nearly everything on it, which prevented me from installing the Ticketmaster app that I needed to enter a Harry Styles concert that I had flown to California by myself to attend. (Would you believe someone at the arena simply agreed to print the ticket out? I was crying.) 

After that, I bought a refurbished iPhone SE with 64GB of storage for $165. I eventually stopped using this one, because the camera was so bad that it was upsetting my friends. Also, a small part of the screen stopped working—right in the spot I had to press to switch the keyboard from letters to numbers, which meant I had no access to punctuation and came off, via text, as very cold. And I couldn’t log in to my bank account.",category_id:2,author_id:2, comment_id:1,like_id:1,bookmark_id:1,user_id:4,date_posted:"15th sep 2022")  

 Article.create(title:"Every Reaction Is an Over-Reaction",content:"Things are rarely as bad — or as good — as you think they are. The goal is not to get too attached to lopsided thinking in one direction or the other.

 Iremember, back in 2008, walking into my manager’s office at the investment bank I worked at for all of three weeks and proudly declaring that I quit. I had just come up with an idea for an internet business that I thought was going to earn me a full-time income within a few months. (It would go on to make about $400… total.)
 
 I remember that summer, working tirelessly on my friend’s futon, watching my bank account fall deeper and deeper into the red, having idea after idea fall flat, being utterly convinced that I had just ruined my life.
 
 I remember that next winter, while being supported by a (very patient) girlfriend, coming up with an idea for a video platform, teaching myself how to code it, and actually believing I was going to be a millionaire within a year. (Spoiler alert: I wasn’t.)",category_id:3,author_id:1, comment_id:3,like_id:3,bookmark_id:3,user_id:3,date_posted:"15th aug 2022")  

 Article.create(title:"The body is not a machine",content:"The human body is subject to innumerable metaphors: Our brains are computers with immense processing power; our bodies are machines that need to be tuned and honed and oiled and optimized.

 But metaphors are just that — metaphors. While they’re useful for interpreting and explaining the world to ourselves, they aren’t always reflective of reality. They’re not always real. The effects of believing in them, though, can have very real-world effects.
 
 The body as a machine, as mechanics, is a perfect example of this. What’s known as “locomotion studies” or biophysical mechanics, is hundreds of years old. Its most established foundations were built by looking at the human body as so much discrete, barely connected parts, and in many ways we’re still left with the legacy of that understanding.",category_id:4,author_id:2, comment_id:4,like_id:4,bookmark_id:4,user_id:2,date_posted:"04th sept 2021")  

 Article.create(title:"8 Reasons to Avoid Subscribing to Netflix",content:"The other big complaint about Netflix—which has been one of its sore spots ever since the streaming service went live—is that its library is never up-to-date. These days, only Netflix originals can really be considered timely and trendy.

 Due to licensing agreements with TV networks, it doesn't make sense to let Netflix stream episodes as they're released on a network because that would kill any incentive for people to watch the networks themselves.
 
 Netflix's strength is binge-watching, which means it's good for catching up on TV shows just before the next season begins airing. That's why most of Netflix's library is about one year old. Networks aren't willing to let Netflix load up its library with recent content.",category_id:5,author_id:2, comment_id:5,like_id:5,bookmark_id:5,user_id:1,date_posted:"1st dec 2020")  

ArticleCategory.create(article_id: 1, category_id: 1)
ArticleCategory.create(article_id: 2, category_id: 2)
ArticleCategory.create(article_id: 3, category_id: 3)
ArticleCategory.create(article_id: 4, category_id: 4)
ArticleCategory.create(article_id: 5, category_id: 5)

Categories.create(author_id: 1)
Categories.create(author_id: 2)
Categories.create(author_id: 3)
Categories.create(author_id: 4)
Categories.create(author_id: 5)

puts "✅ Done seeding!"
