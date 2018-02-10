class Array
  def to_gp
    case self.first 
    when Array
      ar = self.transpose
      ar3 = ar.map do |ar2|
        ar2.join(" ")
      end
      ar3.join("\n") + "\ne"
    else
      str = self.join("\n")
      str += "\ne"
    end
  end
end
