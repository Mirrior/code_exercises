require 'rspec'

module RubyComments
  refine String do
    def commentize
      "# #{self}"
    end
  end
end

module HTMLComments
  refine String do
    def commentize
      "<!-- #{self} -->"
    end
  end
end


class RubyContentController
  using RubyComments

    def initialize(word)
      @word = word
    end

    def hidden_content
      @word.commentize
    end
end

class HTMLContentController
  using HTMLComments

    def initialize(word)
      @word = word
    end

    def hidden_content
      @word.commentize
    end
end


describe 'Refining Strings for a specific module' do
  it 'changes the behavior of the String method to make it render as a comment' do
    cc = RubyContentController.new("My Ruby String")
    expect(cc.hidden_content).to eq("# My Ruby String")
  end

  it 'changes the behavior of the String method to make it render as a comment' do
    html = HTMLContentController.new("My HTML String")
    expect(html.hidden_content).to eq("<!-- My HTML String -->")
  end
end