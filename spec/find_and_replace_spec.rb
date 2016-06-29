require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('replaces words in a string with a specified word') do
    expect(('the world is great').find_and_replace('great', 'bad')).to(eq("the world is bad"))
  end
  it('handles partial matches') do
    expect(("I am walking my cat to the cathedral").find_and_replace("cat", "dog")).to(eq("I am walking my dog to the doghedral."))
  end
end
