def cat_tally(name)
  ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
             {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
             {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
             {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
             {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
             {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]
# Created a tally method so I could eventually call it on the contestants
  counter = 0
# Started a counter variable that starts at 0
  ballots.each do |hash|
    hash.each do |key, value|
    if value == name && key == 1
      counter += 1
    elsif value == name && key == 2
      counter += 2
    elsif value == name && key == 3
      counter += 3
# Count the votes and add them to the counter.
    end
  end
end
    counter
end

p smudge = cat_tally('Smudge')
p tigger = cat_tally('Tigger')
p simba = cat_tally('Simba')
p lucky = cat_tally('Lucky')
p bella = cat_tally('Bella')
p boots = cat_tally('Boots')

cats = [{5 => smudge},
{5 => tigger},
{5 => simba},
{3 => lucky},
{8 => bella},
{3 => boots}]

puts voting = cats.sort{|a,b| a[1] <=> b[1]}.last[0]


# End statement confirming the total

# rename smudge_counter to cat_counter, and return the amoutn
# iterate through the cats

# Calculating the winner using the earlier method
#     if smudge_counter > tigger_counter && simba_counter && felix_counter && bella_counter
#       puts "Smudge won the tally"
#     elsif  tigger_counter > smudge_counter && simba_counter && felix_counter && bella_counter
#       puts "Tigger won the tally"
#     elsif  simba_counter > tigger_counter && smudge_counter && felix_counter && bella_counter
#       puts "Simba won the tally"
#     elsif  felix_counter > tigger_counter && smudge_counter && simba_counter && bella_counter
#       puts "Felix won the tally"
#     elsif  bella_counter > tigger_counter && smudge_counter && simba_counter && felix_counter
#       puts "Bella won the counter"
#       end
#     end
# end
