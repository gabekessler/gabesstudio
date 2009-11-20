# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  include TagsHelper
  
  def title(page_title)
    content_for(:title) { page_title }
  end
  
    def wave_panel(wave_id)  
      wave_panel = RaveEmbed::WavePanel.new(wave_id,  
                               :function_name => 'wavePanelStart',  
                               :dom_id => 'wave_container',  
                               :bg_color => 'green',  
                               :color => '#FFFFFF',  
                               :font => 'Arial',  
                               :font_size => 12,  
                               :height => '600px',  
                               :width => '500px'  
      )  
      wave_panel.to_html  
    end  
    
    def display_notices 
      if flash[:notice] 
        txt = "<div class='notice'>"
    		 txt += flash[:notice]
    		 if flash[:description]
    		   txt += flash[:description]
  		   end
  		   txt += '<script type="text/javascript">
          $(".notice").fadeIn( function(){ setTimeout( function(){ $(".notice").fadeOut(1500); }, 3000);});
        </script>'
      	 txt += "</div>"
    	 end
  	 end
  	 
  
end