require "./spec_helper"

describe Array do
  [1,2,3].to_gp.should eq "1\n2\n3\ne"
end
