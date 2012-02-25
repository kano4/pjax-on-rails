require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(Post,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td"
    rendered.should match(/New/)
    rendered.should match(/Name/)
    rendered.should_not match(/MyText/)
  end
end
