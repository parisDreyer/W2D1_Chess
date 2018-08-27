# PHASE 2
STRING_YEARS = {
  'zero' => 0,
  'one' => 1,
  'two' => 2,
  'three' => 3,
  'four' => 4,
  'five' => 5,
  'six' => 6
}
def convert_to_int(str)
  yrs = STRING_YEARS[str]
  
  if yrs
    yrs
  else
    Integer(str)
  end
  
rescue TypeError
  nil
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  rescue
    if maybe_fruit.downcase == 'coffee'
      retry
    end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
      if yrs_known < 5
        raise "You're not best friends."
      end
      
      if name.length == 0
        raise "Did you forget your best friend's name?"
      end 
      
      if fav_pastime.length == 0
        raise "Don't you know your best friend's hobbies?"
      end
      
      @name = name
      @yrs_known = yrs_known
      @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known} years. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


