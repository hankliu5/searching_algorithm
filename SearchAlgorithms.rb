module SearchAlgorithms
  # Linear Search
  def SearchAlgorithms.linearSearch(arr, target)
    i = 0
    loop do
      break if i >= arr.length
      return i if target == arr[i]
      i += 1
    end
    return 0
  end

  # Binary Search
  def SearchAlgorithms.binarySearch(arr, target)
    i = 0
    j = arr.length - 1
    while i <= j
      m = (i + j) / 2
      if target == arr[m]
        return m
      elsif target > arr[m]
        i = m + 1
      elsif target < arr[m]
        j = m - 1
      end
    end
    return 0
  end
end
