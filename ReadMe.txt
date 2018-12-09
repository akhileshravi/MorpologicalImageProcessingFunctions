---------------------------------------------------------------------------------------
Copyright @ Akhilesh Ravi 16110007 DIP Assignment 3 Question 1
---------------------------------------------------------------------------------------
This folder contains MATLAB functions for various set operations and for three definitions for erosion on sets.
The sets have to be of the form {(i_1,j_1),(i_2,j_2),...,(i_n,j_n) | where i_1, ..., i_n, j_1, j_n are integers}
This is the case for A, B and U.
C will be given as output in the above mentioned form.
h should be an ordered pair containing integers (x,y).
If A contains (x,y), then, it means that the value in A at (x,y) is 1. If A does not contain (x,y), then, the value in A at (x,y) is 0.
THE OUTCOMES MAY NOT BE AS EXPECTED OR ERRORS MAY OCCUR IF THE INPUTS ARE NOT OF THE SPECIFIED FORM.

complement_16110007(A,U)
	Complement of a set
	
	Input Arguments
	A - The given set
	U - (Optional) The universal set. By default, it will be the smallest rectangular that will just cover A
	
	Output argument
	C - Complement of the set A


intersect_16110007(A,B)	
	Intersection of two sets A and B
	
	Input Arguments
	A, B - Input sets
	
	Output Argument
	C - Intersection of A and B

	
is_subset_16110007(A,B)	
	Checks if a set A is the subset of another set B
	
	Input Arguments
	A, B - input sets
	
	Output Argument
	flag ->	1 if A is a subset of B
			0 if A is not a subset of B

			
reflection_16110007(A)
	Reflection of a set A
	
	Input Argumnet
	A - Input set
	
	Output Argument
	C - Reflection of A

	
set_diff_16110007(A,B)
	Set Difference
	
	Input Arguments
	A, B - Input sets
	
	Output Argument
	C -> Set difference, A-B
	
	
translate_16110007(A,h)
	Translation of a set by a vector
	
	Input Arguments
	A - Input set to be translated
	h - Vector to be used for translation
	
	Output Argument
	C -> A translated by h
	

union_16110007(A,B)
	Union of two sets
	
	Input Arguments
	A, B - Input sets
	
	Output Argument
	C -> union of sets A and B
	
	
erosion_1_16110007(A,B)
	Erosion of a set A by another set B (by definition 1 for erosion)
	
	Input Arguments
	A - Input set to be eroded
	B - Input set to be used for erosion
	
	Output Argument
	C -> Set A eroded by set B
	C = { z | B_z is a subset of A}
	
	
erosion_2_16110007(A,B)
	Erosion of a set A by another set B (by definition 2 for erosion)
	
	Input Arguments
	A - Input set to be eroded
	B - Input set to be used for erosion
	
	Output Argument
	C -> Set A eroded by set B
	C = { z | z + b is an entry of A for all b in B}
	
	
erosion_3_16110007(A,B)
	Erosion of a set A by another set B (by definition 3 for erosion)
	
	Input Arguments
	A - Input set to be eroded
	B - Input set to be used for erosion
	
	Output Argument
	C -> Set A eroded by set B
	C = Intersection of all sets A_b for all b in B
