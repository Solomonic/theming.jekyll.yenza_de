require "fastimage"

module Kramdown
    module Converter
        class Amp < Html
            def convert_img(el, indent)
                img_src = el.attr["src"]
                img_src = img_src.slice(1..-1) if img_src.start_with?("/")
                img_class =  el.attr["class"]

                w, h = FastImage.size(img_src)
                
                if img_src.end_with?(".jpg") || img_src.end_with?(".png")
                    "<div style='max-width:#{w}px;' class='amp_img width_#{w}'><amp-img class='border border-secondary' layout='responsive' src='#{el.attr['src']}' alt='#{el.attr['alt']}' width='#{w}' height='#{h}'><amp-img class='border border-secondary' fallback layout='responsive' #{html_attributes(el.attr)} width='#{w}' height='#{h}'></amp-img></amp-img></div>"
                else
                    "<div style='max-width:#{w}px;' class='amp_img width_#{w}'><amp-img class='border border-secondary' layout='responsive' #{html_attributes(el.attr)} width='#{w}' height='#{h}'></amp-img></div"
                end
            end
        end
    end
end

class Jekyll::Converters::Markdown::MyAmpProcessor < Jekyll::Converters::Markdown::KramdownParser

    def initialize(config)
        super(config)
    end

    def convert(content)
        document = Kramdown::Document.new(content, @config)
        html_output = document.to_amp
        if @config["show_warnings"]
            document.warnings.each do |warning|
                Jekyll.logger.warn "Kramdown warning:", warning
            end
        end
        html_output
    end
end