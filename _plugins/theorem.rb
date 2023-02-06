require 'kramdown'

class Theorem < Liquid::Block
    def initialize(tag_name, markup, tokens)
        @tag = markup
        super
    end

    def render(context)
        contents = super

        tag = @tag.chomp.strip

        content = Liquid::Template.parse(contents).render context

        output = "<div class='theorem'><p><b>Theorem"
        unless tag == ''
            output += " (#{tag})"
        end
        output += ".</b> #{content.gsub(/\n\n/, "</p><p>")}</p></div>"

        return output
    end
end
Liquid::Template.register_tag('thm', Theorem)

class Definition < Liquid::Block
    def initialize(tag_name, markup, tokens)
        @tag = markup
        super
    end

    def render(context)
        contents = super

        tag = @tag.chomp.strip

        content = Liquid::Template.parse(contents).render context

        output = "<div class='theorem'><p><b>Definition"
        unless tag == ''
            output += " (#{tag})"
        end
        output += ".</b> #{content.gsub(/\n\n/, "</p><p>")}</p></div>"

        return output
    end
end
Liquid::Template.register_tag('def', Definition)

class Warn < Liquid::Block
    def initialize(tag_name, markup, tokens)
        super
    end

    def render(context)
        contents = super

        content = Liquid::Template.parse(contents).render context

        output = "<div class='warning'>"
        output += "<img src='/assets/images/dangerous_bend.png' alt='dangerous bend!'>"
        output += "<div><p><b>Careful!</b>"
        output += "#{content.gsub(/\n\n/, "</p><p>")}</p></div></div>"

        return output
    end
end
Liquid::Template.register_tag('warn', Warn)

class Aside < Liquid::Block
    def initialize(tag_name, markup, tokens)
        super
    end

    def render(context)
        contents = super

        content = Liquid::Template.parse(contents).render context

        output = "<div class='aside'>"
        output += "<div><b>Aside: </b></div>"
        output += "<div class='hidden-aside' style='display:none;'><p>#{content.gsub(/\n\n/, "</p><p>")}</p></div>"
        output += "<div class='show-aside'>Show</div></div>"

        return output
    end
end
Liquid::Template.register_tag('aside', Aside)