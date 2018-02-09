require 'colorize'
require_relative 'git'

class Main
  include Git


  def menu
    puts "=".colorize(:cyan) * 50
    puts 'MAIN MENU'.colorize(:cyan)
    puts "=".colorize(:cyan) * 50
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
end

Main.menu
