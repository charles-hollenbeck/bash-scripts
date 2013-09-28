#!/usr/bin/env ruby
#Simple argument to push to multiple git remotes and branches

remotes = Array.new
branches = Array.new
tags = false
mult_branch = false

ARGV.each do|a|
  if a == "-t" or a == "--tags" and tags == false
    tags = true
  elsif a == "-b" or a == "--branches" and mult_branch == false
    mult_branch = true
  elsif mult_branch
    branches << a
  else
    remotes << a
  end
end

branches << "master" unless mult_branch

for j in 0..(remotes.count-1)
  for i in 0..(branches.count-1)
    cmd = "git push #{remotes[j]} #{branches[i]}"
    cmd += " --tags" if tags
    puts "Pushing branch \"#{branches[i]}\" to remote \"#{remotes[j]}\""

    if system(cmd)
      puts "Push successful"
    else
      puts "Push failed!"
    end
  end
end