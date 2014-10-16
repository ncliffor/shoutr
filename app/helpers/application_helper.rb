module ApplicationHelper
   def bold(text)
     username = /@\w+/.match(text)
     bold_username = content_tag(:strong, username)
     text.gsub(/@\w+/, bold_username) 
   end
end
