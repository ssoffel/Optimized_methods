require 'byebug'

def windowed_max_range(arr, win_size)
  max_start_value = arr.length - win_size

  start = 0
  # Initialize a local variable current_max_range to nil.
  max_range = nil

  # Iterate over the array
  while start <= max_start_value
    ending = win_size - 1 + start
    # and consider each window of size w. For each window:
    window = arr[start..ending]
    # Find the max value in the window.
    # Find the min value in the window.
    range = window.max - window.min

    # Calculate max - min and compare it to current_max_range.
    # Reset the value of current_max_range if necessary
    if max_range.nil? || range > max_range
      max_range = range
    end

    start += 1
  end

  # Return current_max_range
  max_range
end


def opted_windowed_max_range(arr, win_size)
  max_start_value = arr.length - win_size

  start = 0
  # Initialize a local variable current_max_range to nil.
  max_range = nil
  
  # Iterate over the array
  while start <= max_start_value
    ending = win_size - 1 + start
    # and consider each window of size w. For each window:
    window = arr[start..ending]
    # Find the max value in the window.
    # Find the min value in the window.


    # Calculate max - min and compare it to current_max_range.
    # Reset the value of current_max_range if necessary
    if max_range.nil? || range > max_range
      max_range = range
    end

    start += 1
  end

  # Return current_max_range
  max_range
end

p opted_windowed_max_range([1, 0, 2, 5, 4, 8], 2) #4 # 4, 8
p opted_windowed_max_range([1, 0, 2, 5, 4, 8], 3) #5 # 0, 2, 5
p opted_windowed_max_range([1, 0, 2, 5, 4, 8], 4) #6 # 2, 5, 4, 8
p opted_windowed_max_range([1, 3, 2, 5, 4, 8], 5) #6 # 3, 2, 5, 4, 8
