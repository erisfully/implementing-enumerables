module GschoolEnumerable

  def g_each
    for item in self
      yield(item)
    end
  end

  def g_select
    ary = []
    self.g_each do |item|
      if yield(item)
        ary << item
      end
    end
    ary
  end

  def g_reject
    ary = []
    self.g_each do |item|
      if yield(item)
      else
      ary << item
      end
    end
    ary
  end

  def g_map
    ary = []
    self.g_each do |item|
      ary << yield(item)
    end
    ary
  end

  def g_find
    self.g_each do |item|
      return item if yield(item)
    end
    nil
  end

  def g_select!
      self.g_each do |item|
        if yield(item)
        else
         self.delete(item)
      end
    end
  end
end


