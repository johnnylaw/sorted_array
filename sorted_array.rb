class SortedArray < Array
  def bsearch(needle)
    return if empty?
    return needle if midpoint == needle
    return first_half.bsearch(needle) if midpoint > needle
    second_half.bsearch needle
  end

  private

  def first_half
    return SortedArray.new if length <= 1
    SortedArray.new values_at(0..half_index)
  end
  
  def second_half
    return SortedArray.new if length <= 1
    SortedArray.new values_at(half_index + 1..-1)
  end
  
  def half_len
    @half_len ||= length / 2
  end
  
  def half_index
    length.odd? ? half_len : half_len - 1
  end
  
  def midpoint
    fetch half_index
  end
end