module ApplicationHelper
    def login_helper
        if current_user.is_a?(User) 
            (link_to   "register ", new_user_registration_path, class: "sign-out ") + 
             "<br/>".html_safe + 
            (link_to   "login", new_user_session_path, class: "sign-out" )
        else
            link_to   " logout", destroy_user_session_path, method: :delete, class: "sign-out"
        end  
    end

    def sample_helper 
        content_tag(:div,'My content', class: "my-class")
    end    

    def source_helper(layout_name)
        if session[:source] 
            greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
            content_tag(:p, greeting, class: "source-greeting")
        else
            content_tag(:p,"session is not loaded at")
        end 
    end     
    
    def copyright_generator
        DevecampViewTool::Renderer.copyright 'Sunilvarma', "All rights reserved"
    end    
end




# Example for skipping the register link in the home 
# in the below example skipp the 'no' print the 'something' so 
#in this case you should write like the above format we got both 
#out puts 
# def sample_method 
#     x = 1.5

#     if x == 1 
#         'yes'
#     else 
#         'no'
#         'something'
#     end 
# end           


# def sourse_helper method is look like in application.html.erb file  below 
# and search like {localhost:3000/?q=google} you got proper out put
# <% if session[:source] %>
# <p>Thanks for visiting me from <%= session[:source] %> </p>
# <% else %>
# <p>session is not loaded at </p>  
# <% end %>  

