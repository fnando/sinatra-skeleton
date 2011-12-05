require "spec_helper"

describe Views::Layouts::Default do
  describe "#title" do
    it "returns default title" do
      subject.title.should eql("Some default title")
    end

    it "returns title" do
      subject.instance_eval { @title = "My custom title" }
      subject.title.should eql("My custom title")
    end
  end
end
