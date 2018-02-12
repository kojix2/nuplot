require "./spec_helper"

describe Array do
  
  array1_1d_int32 = Array(Int32).new(3){|i| i+1}
  array2_2d_int32 = Array(Array(Int32)).new(2){ |i|
    Array(Int32).new(3){|j| i*3+j+1}
  }
  array3_2d_int32 = Array(Array(Int32)).new(3){ |i|
    Array(Int32).new(3){|j| i*3+j+1}
  }

  array1_1d_int32.should eq [1,2,3]
  array2_2d_int32.should eq [[1,2,3],[4,5,6]]
  array3_2d_int32.should eq [[1,2,3],[4,5,6],[7,8,9]]


  array1_1d_int32.to_gp.should eq "1\n2\n3\ne"
  array2_2d_int32.to_gp.should eq "1 4\n2 5\n3 6\ne"
  array3_2d_int32.to_gp.should eq "1 4 7\n2 5 8\n3 6 9\ne"


  array_char = ['a','b','c','d','e']
  array_string = ["aa", "bb", "cc", "dd", "ee"]

  array_char.to_gp.should eq "\"a\"\n\"b\"\n\"c\"\n\"d\"\n\"e\"\ne"
  array_string.to_gp.should eq "\"aa\"\n\"bb\"\n\"cc\"\n\"dd\"\n\"ee\"\ne"
end
