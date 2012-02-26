require 'spec_helper'

describe Post do
  before(:each) do
    @post = Post.new(:name        => 'Test',
                     :description => 'Test Description')
  end

  subject { @post }

  it 'saves successfully' do
    subject.save.should be_true
  end

  context 'with blank name' do
    before { @post.name = '' }

    it "fails to save" do
      subject.save.should_not be_true
    end
  end
end
