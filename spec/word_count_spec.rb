require "word-count"

describe "word-count" do
  it "count words" do
    words = { "test" => 10, "tests" => 6 }
    expect(words["test"]).to eq(10)
  end
end
