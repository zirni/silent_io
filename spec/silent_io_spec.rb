# frozen_string_literal: true

RSpec.describe SilentIO do
  it "silences $stdout" do
    expect(true).to eq(true)

    expect($stdout).to_not receive(:puts).with('foo')

    SilentIO.call do
      puts 'foo'
    end

  end

  it "silences $stderr" do
    expect(true).to eq(true)

    expect($stderr).to_not receive(:puts).with('bar')

    SilentIO.call do
      $stderr.puts 'bar'
    end

  end
end
