# ARRAYS & FOR LOOPS

## 💡 Indexed Arrays

***Arrays***, compared to ***Variables***, can store ***multiple data***, which is fantastic for ***batch processing***.

Syntax for index arrays:
```bash
name=(value_1 value_2 … value_N)
```

Example:
```bash
numbers=(1 two 3 four)
```
> :warning: <b>Note</b>
> <br>Values in indexed lists are seperated by `spaces` not `commas`. Indices start from `0` and
count up.


## 💡 Array Expansion

Array expansion can help to grab data from array ***without changing*** the original data. 

### :green_circle: Operators in use

Assume ```array=(1 2 3 4 5 6)```.

|                        **Expansion**                       	| ***Description***                                                                                      	| ***Result*** 	|
|:----------------------------------------------------------:	|--------------------------------------------------------------------------------------------------------	|:------------:	|
|                        **${array}**                        	| Returns the ***first element*** of an array                                                            	| 1            	|
|                       **${array[@]}**                      	| Expands to ***all the elements*** of an array                                                          	| 1 2 3 4 5 6  	|
|                      **${!array[@]}**                      	| Expands to the indecies of all the array elements                                                      	| 0 1 2 3 4 5  	|
|      **${array[@]:offset} <br>e.g.<br> ${array[@]:3}**     	| It starts at the index number specified by  ***offset***  and continues until the array elements end.  	| 4 5 6        	|
| **${array[@]: -2}**                                        	| Negative offsets start ***from the end***. <br> ***Note:*** There is a space before `-` and after `:`. 	| 5 6          	|
| ***${array[@]:offset:length} <br>e.g.<br> ${array[@]:2:3}*** 	| It start from the ***offset*** and continue untill the lenght of the array is ```lenght```.            	| 2 3 4        	|

## 💡 Array Modification