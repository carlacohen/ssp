### Demo script for using loops & lists ###

# create some objects

a <- c(1, 2, 3, 4, 5)
b <- c(2, 4, 6, 8, 10)
c <- c(5, 6, 7, 8, 9)

# put the objects into a list

my_list <- list(a, b, c)

# in order to do a function on each item in the list we can use a for loop
# NB if you're just using one function you can also use "lapply" but that's another story

# first create an empty list to store the output

output <- list()

# this is a loop using numbers
for (i in 1:length(my_list)){ # so in this case the sequence is 1, 2, 3 because the length of my_list is 3
  output[[i]] <- mean(my_list[[i]]) # do the function on the ith item of the list (in this case mean) and assign it to the ith item of the output list
}

# so now you have your output list
output

# the other way to use loops is with names but I'm less good at getting that to work. 
# that is what Adam is doing to create the RDS files

file_names <- c("file1.txt", "file2.txt", "file3.txt")


# create the loop using names
for (myfile in file_names){
  output_2 <- str_replace(myfile, ".txt", ".pdf") #for each file in the list, replace .txt with .pdf 
  print(output_2)
}

# He is using the assign function to temporarily change the name of the Seurat Object to that of each file
# this is a bit messy and now it is recommended to use the first method I've shown above

# so to use the numbers with the file example

# create an empty list to store the output

output_2 <- list()
for (i in 1:length(my_list)){ 
  output_2[[i]] <- str_replace(myfile, ".txt", ".pdf") # do the function on the ith item of the list and assign it to the ith item of the output list
}

# check what you did
# you have created a new list which contains file.pdf not file.txt
output_2


