class String
  define_method(:leetspeak) do
    leet = self.split(" ")
    final_leet = []
    leet.each do |word|
      indiv_word = word.split("")
      time = 0
      new_leet = []
      indiv_word.each do |letter|
        time +=1
        if letter == 's' && time == 1
          new_leet.push(letter)
        elsif letter == 'e'
          new_leet.push(3)
        elsif letter == "o"
          new_leet.push(0)
        elsif letter == "I"
          new_leet.push(1)
        elsif letter == "s"
          new_leet.push("z")
        else
          new_leet.push(letter)
        end
      end
      new_leet = new_leet.join("")
      final_leet.push(new_leet)
    end
    final_leet.join(" ")
  end
end
