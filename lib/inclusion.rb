module CommonClass
  def class_name; self.to_s; end
end

module Statistics
  def mean; end
end

class Maths
  include Statistics
  extend CommonClass
end
