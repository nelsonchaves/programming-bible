# programming-bible
 Things to test out
 
debugger - on controller
raise
@user.inspect
= params

@candidate = Candidate.find(:all, :conditions => ["candidates.id IN ? (?)", @found])
@found = params['candidate].map(&:to_i)
