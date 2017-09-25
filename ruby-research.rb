# its arguments (name, data type, optional/required, default value if any)
# its return type
# a line of code showing how to call the method and what will be returned

STRING
1. length
- Arguments: String
- Return Type: Integer; returns character length of a string
- Method: puts string.length

2. strip
- Arguments: String
- Return Type: New string; Returns a copy of string with leading and trailing whitespace removed
- Method: "     hello     ".strip #=> "hello"

3. split
- Arguments: String, integer
- Return Type: New Array; Divides string into substrings based on a delimiter, returning an array of these substrings.
- Method: "now's the time".split #=> ["now's", "the", "time"]

4. start_with?
-Arguments: String
-Return Type: Returns true if string starts with one of the prefixes given
- Method: "hello".start_with?("heaven", "hell") #=> true
          "hello".start_with?("heaven", "paradise") #=> false

#------------------------------------------------------------------------------
ARRAY
1. first
- Arguments:  String, integer
- Return Type: Returns the first element or n elements of the array; if array is empty, returns nil
- Method: a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

2. delete_at
- Arguments: index number
- Return Type: Deletes element at specified index, returns deleted element, or nil if the index is out of range
- Method: a = ["ant", "bat", "cat", "dog"]
a.delete_at(2)    #=> "cat"
a                 #=> ["ant", "bat", "dog"]
a.delete_at(99)   #=> nil

3. delete
- Arguments: String, integer; Deletes all items from self that are equal to object
- Return Type: Returns the last deleted item, or nil if no matching item is found
- Method: a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]
a.delete("z")                   #=> nil
a.delete("z") { "not found" }   #=> "not found"

4. pop
- Arguments: string, integer; removes last element from self
- Return Type: returns last item removed, or nil if array is empty
- Method: a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"
a.pop(2)  #=> ["b", "c"]
a         #=> ["a"]

# -----------------------------------------------------------------------------

HASH

1. to_a
- Arguments: string, integer
- Return Type: Converts hash to a nested array of [key, value] arrays
- Method: h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]

2. has_key?
- Arguments: string, integer
- Return Type: Returns true if the given key is present in the hash
- Method: h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

3. has_value?
- Arguments: string, integer
- Return Type: Returns true if the given value is present for some key in the hash
- Method: h = { "a" => 100, "b" => 200 }
h.value?(100)   #=> true
h.value?(999)   #=> false

# -----------------------------------------------------------------------------

TIME
1. now
- Arguments: string, integer; defaults to minimum value for that field (may be nil or omitted)
- Return Type: Creates a Time object based on given values, interpreted as UTC (GMT)
- Method: Time.utc(2000,"jan",1,20,15,1)  #=> 2000-01-01 20:15:01 UTC
Time.gm(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 UTC

# -----------------------------------------------------------------------------
FILE

1. exist?
- Arguments: file name can be an IO object
- Return Type: Returns true if the named file exists
- Methods:  exist?(file_name)

2. extname
- Arguments: string
- Return Type: Returns the extension (the porition of the file name in parth starting from the last period)
              An empty string will also e returned when the period is the last character in the path
- Methods: File.extname("test.rb")         #=> ".rb"
File.extname("a/b/d/test.rb")   #=> ".rb"
File.extname(".a/b/d/test.rb")  #=> ".rb"
File.extname("foo.")            #=> ""
File.extname("test")            #=> ""
File.extname(".profile")        #=> ""
File.extname(".profile.sh")     #=> ".sh"
