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