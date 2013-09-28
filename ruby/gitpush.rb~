#!/usr/bin/env ruby
#Simple argument to push to multiple git remotes and branches

remotes = Array.new
branches = Array.new
tags = false
mult_branch = false
verbose = false

ARGV.each do|a|
  if a == "-t" or a == "--tags" and tags == false
    tags = true
  else if a == "-b" or a == "--branches" and mult_branch == false
    mult_branch = true
  else if a == "-v" or a == "--verbose" and verbose == false
    verbose == true
  else if mult_branch
    branches << a
  else
    remotes << a
  end
end

branches << "master" unless mult_branch
for i in 0..branches.count
  for j in 0..remotes.count
    cmd = "git push #{remotes[j]} #{branches[i]}"
    cmd += " --tags" if tags
    if verbose
      puts %x(cmd)
    else
      puts "Pushing branch \"#{branches[i]}\" to remote \"#{remotes[j]}\"" + (" with tags" if tags)
      if system(cmd)
        puts "Push successful"
      else
        puts "Push failed! (Try using the -v tag for a more verbose output"
      end
    end
  end
end