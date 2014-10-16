module ApplicationHelper
   # def bold(text)
   #   username = /@\w+/.match(text)
   #   bold_username = content_tag(:strong, username)
   #   text.gsub(/@\w+/, bold_username) 
   # end

   # def link_mention(text)
   #   text.gsub(/@\w+/) do |mention|
   #     username = mention[1..-1]
   #     link_to mention, user_path(username)
   #   end
   # end
  
   def link_mention(text)
     text.gsub(/@\w+/) do |mention|
       username = mention[1..-1]
       users = User.all
       usernames = users.map{|user| user.username}
       if usernames.include?(username) 
         link_to mention, user_path(username)
       else
         mention
       end
     end
   end
end
