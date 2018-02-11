require "./spec_helper"

describe Array do
  [1,2,3].to_gp.should eq "1\n2\n3\ne"
  [[1,2,3],[4,5,6]].to_gp.should eq "1 4\n2 5\n3 6\ne"
end
