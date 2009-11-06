# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
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
                               :width => '80%'  
      )  
      wave_panel.to_html  
    end  
  
end