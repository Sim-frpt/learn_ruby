def add( a, b )
  return a + b
end

def subtract( a, b )
  return a - b
end

def sum( array )
  if array.empty?
    return 0 
  end

  sum = 0;

  array.each { |number| sum += number }

  return sum
end

def multiply( *params )
  case params.length
  when 0
    return 0
  when 1
    return params.first 
  else 
    result = params.reduce( 1, :* ) 
    return result
  end
end

def power( a, b )
  return a ** b
end

def factorial( number )
  if number == 0 || number == 1
    return 1
  end
  
  return number * factorial( number - 1 )
end
