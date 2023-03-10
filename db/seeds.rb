3.times do |topic| 
    Topic.create!(
        title: "Topic #{topic}" 
    )
end 

puts "3 topics created" 

10.times do |blog| 
    Blog.create!(
        title: "my blog posts #{blog}" ,
        body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque 
        laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto 
        beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit 
        aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro
        quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius
        modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostr
        um exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure 
        reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
        topic_id: Topic.last.id

    )
end

puts "10 blogs posts are created"






8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Ruby on rails",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
        main_image: "https://via.placeholder.com/600x400.png?%20C/O%20https://placeholder.com",
        thumb_image: "https://via.placeholder.com/350x200.png?%20C/O%20https://placeholder.com"
    )
end    


5.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Angular",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
        main_image: "https://via.placeholder.com/600x400.png?%20C/O%20https://placeholder.com",
        thumb_image: "https://via.placeholder.com/350x200.png?%20C/O%20https://placeholder.com"
    )
end    


puts "8 Portfolios items" 

5.times do |skill| 
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end    

puts "5 skills created" 


3.times do |technology| 
    Technology.create!(
        name: "Technology #{technology}",
        portfolio_id: Portfolio.last.id
    )
end    

puts "3 technologies created" 

