A = [[0 0]; [0 1]; [1 1]; [2 2]; [1 3]; [2 4]]
B = [[0 0]; [1 1]];
e1 = erosion_1_16110007(A,B)
e2 = erosion_2_16110007(A,B);
e3 = erosion_3_16110007(A,B);
e1 == e2
e1 == e3
imerode(convert_to_image(A),convert_to_image(B))
convert(e1)