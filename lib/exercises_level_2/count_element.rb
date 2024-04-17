class CountElement

  def count_element_automatic(arr, element)
    arr.count(element)
  end

  def count_element_manual(arr, element)
    count = 0
    arr.each do |e|
      count += 1 if e == element
    end
    count
  end
end
