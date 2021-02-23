# Chapter 12 Tying It Together: Developing a Larger Ruby Application
# Creating a Simple Text Processing Library
# Building the WordPlay Library
class WordPlay
end

# Splitting Text into Sentences
class String
    def sentences
        gsub(/\n|\r/, ' ').split(/\.\s*/)
    end
end

p %q{Hello. This is a test of
basic sentence splitting. It
even works over multiple lines.}.sentences

# Splitting Sentences into Words
class String
    def words
    scan(/\w[\w\'\-]*/)
    end
end
p "This is a test of words' capabilities".words

# locate exact word
p %q{Hello. This is a test of
    basic sentence splitting. It
    even works over multiple lines}.sentences[1].words[3]

# Word Matching
hot_words = %w{test ruby great}
my_string = "This is a test. Dull sentence here. Ruby is great. So is
cake."
t = my_string.sentences.find_all do |s|
    s.downcase.words.any? { |word| hot_words.include?(word) }
end
p t.to_a 

# Switching Subject and Object Pronouns
class WordPlay
    def self.best_sentence(sentences, desired_words)
        ranked_sentences = sentences.sort_by do |s|
            s.words.length - (s.downcase.words - desired_words).length
        end
        ranked_sentences.last
    end

    def self.switch_pronouns(text)
        text.gsub(/\b(I am|You are|I|You|Your|My)\b/i) do |pronoun|
            case pronoun.downcase
                when "i"
                    "you"
                when "you"
                    "I"
                when "i am"
                    "you are"
                when "you are"
                    "i am"
                when "your"
                    "my"
                when "my"
                    "your"
            end
        
        end.sub(/^me\b/i, 'i')
    end
end 
puts WordPlay.switch_pronouns("Your cat is fighting with my cat")
puts WordPlay.best_sentence(my_string.sentences, hot_words)
puts WordPlay.switch_pronouns("You are my robot")
puts WordPlay.switch_pronouns("I gave you life")



