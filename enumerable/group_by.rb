def group_by_marks(marks, n)
  # your code here
    marks.group_by {|name, score| (score < n) ? "Failed" : "Passed"}
end
marks = {"Ramesh" => 23, "Vivek" => 40, "Harsh" => 88, "Mohammad" => 60}
puts group_by_marks(marks,30)
