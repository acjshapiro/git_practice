require 'colorize'


def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts "=" * 50
  puts 'MAIN MENU'.colorize(:cyan)
  puts "=" * 50
  puts '1: Enter git command'.colorize(:cyan)
  puts '2: Exit'.colorize(:cyan)
  choice = gets.to_i
  case choice
    when 1
      puts 'Enter git command'.colorize(:cyan)
      puts_git(gets.strip)
      menu
    when 2
      exit
    else puts 'Invalid Choice'.colorize(:red)
      menu
  end
end

menu
