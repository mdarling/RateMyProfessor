Given /^a Professor named John Smith$/ do
  @professor = Professor.create( :name => "John Smith" )
end

Given /^I have a course called ECE(\d+)$/ do |arg1|
  @course = Course.create!( :name => "ECE101" )
end

When /^I create a new evaluation$/ do
  @evaluation = Evaluation.create() 
end

Then /^it belongs to a course$/ do
  pending # express the regexp above with the code you wish you had
end
	
