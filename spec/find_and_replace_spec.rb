require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('replaces words in a string with a specified word') do
    expect(('the world is great').find_and_replace('great', 'bad')).to(eq("The world is bad"))
  end
  it('handles partial matches') do
    expect(("I am walking my cat to the cathedral.").find_and_replace("cat", "dog")).to(eq("I am walking my dog to the doghedral."))
  end
  it('handles all caps entries') do
    expect(("I AM ON FIRE").find_and_replace("am", "am not")).to(eq("I am not on fire"))
  end
  it('handles mixed case entries') do
    expect(("wHaT iS yOuR nAmE?").find_and_replace('yOuR', 'my')).to(eq("What is my name?"))
  end
  it('handles "I" in the middle of the sentence') do
    expect(("How am I alive right now?").find_and_replace('How', 'Why')).to(eq("Why am I alive right now?"))
  end
end
