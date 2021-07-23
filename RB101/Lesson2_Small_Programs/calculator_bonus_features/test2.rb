
def valid_answer?(ans)
  appropriate_answer = [['n','N','no','NO','nope'],['yes','YES','y','Y','yeah']]
  appropriate_answer.flatten.include?(ans)
end
def exit_if_no?(ans)
  appropriate_answer = [['n','N','no','NO','nope'],['yes','YES','y','Y','yeah']]
  appropriate_answer[0].include?(ans)
end


  loop do
      loop do
      puts "Are you ready?"
      ready = Kernel.gets().chomp()
      break if ready == 'y'
      puts "let me know then."
    end
    loop do
      puts "Do you want another calculation?:"
      answer = Kernel.gets().chomp()
      if valid_answer?(answer)
        @answer = answer
          break
        #puts "Invalid response:"

      puts "Invalid response"
      end
    end

      loop do
        if exit_if_no?(@answer)
          puts "Thanks for playing!"
          break
        else
          puts "Lets go again!"
          break
      end
      case @answer
      when exit_if_no?(answer)
        break
      end
    end
  end
