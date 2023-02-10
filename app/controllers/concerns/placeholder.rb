module Placeholder 
    extend ActiveSupport::Concern   
    
    def self.image_generator(height:,width:)
        "https://via.placeholder.com/#{height}x#{width}.png?%20C/O%20https://placeholder.com"
    end        
end     