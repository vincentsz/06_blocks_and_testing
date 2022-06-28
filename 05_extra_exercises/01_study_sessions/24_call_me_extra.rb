# 24, What will the method call call_me output? Why?
def name
  "Bob"
end

other_name = "Bobby"
name = "Robert"

chunk_of_code = Proc.new {puts "hi #{name}"}

p chunk_of_code.binding.local_variables
p chunk_of_code.binding.local_variable_get(:name)

# This code will ouput 'Hi griffin.'

# On line 8 a `Proc` object is created and assigned to the local var `chunk_of_code`.

# Since on line 7, before our `Proc` is created, a local var `name` is initialized, 
# `name` will become part of the Procs binding, since it will bind to any artifacts that are in scope at the time of its creation.