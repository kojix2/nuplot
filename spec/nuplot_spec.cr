require "./spec_helper"

describe Array do
  
  array1_1d = [1,2,3]
  array2_2d = [[1,2,3],[4,5,6]]
  array3_2d = [[1,2,3],[4,5,6],[7,8,9]]

  to_gp(array1_1d).should eq "1\n2\n3\ne"
  to_gp(array2_2d).should eq "1 4\n2 5\n3 6\ne"
  to_gp(array3_2d).should eq "1 4 7\n2 5 8\n3 6 9\ne"

  array_char = ["a","b","c","d","e"]
  c = gp_escape(array_char)

  to_gp(c).should eq "\"a\"\n\"b\"\n\"c\"\n\"d\"\n\"e\"\ne"

end
