require "spec_helper"
require "lol"

include Lol

describe LeagueEntry do
  it "behaves like a DynamicModel" do
    expect(described_class).to be < DynamicModel
  end

  it "returns a list of LeagueEntry objects for the entries property" do
    subject = described_class.new item: {}, mini_series: {}
    expect(subject.item.class).to eq LeagueEntry
    expect(subject.mini_series.class).to eq MiniSeries
  end
end
