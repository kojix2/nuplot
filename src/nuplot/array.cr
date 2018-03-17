def to_gp(array : Array(Array))
  str = [] of String
  array.transpose.each do |ary|
    str << ary.join(" ")
  end
  to_gp str
end

def to_gp(array : Array)
  array.join("\n") + "\ne"
end

def gp_escape(arr : Array(String))
  arr.map(&.inspect)
end
