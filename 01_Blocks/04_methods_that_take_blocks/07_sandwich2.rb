new_file = File.open("some_text.txt", "w+")
# write things in file with new_file.write
new_file.close

# or

new_file = File.open("some_text.txt", "w+") do |file|
  # write things in file with new_file.write
end