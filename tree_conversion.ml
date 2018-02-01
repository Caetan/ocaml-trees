

(***********************************************************************


  Developed by Caetán Tojeiro Carpente (caetantojeiro95@gmail.com)


************************************************************************)


open Bin_tree;;
open St_tree;;
	
let rec st_tree_of_bin_tree = function
    Empty -> raise (Invalid_argument "st_tree_of_bin_tree")
  | Node (r, Empty, Empty) -> single r
  | Node (r,i,d) -> comp r (st_tree_of_bin_tree i, st_tree_of_bin_tree d);;

let is_single t = 
  try ramas t ; false 
  with Ramas -> true;;

let rec bin_tree_of_st_tree t =
  if is_single t
  	then Node (raiz t, Empty, Empty)
  else let i,d = ramas t 
	in Node (raiz t, bin_tree_of_st_tree i, bin_tree_of_st_tree d);;
