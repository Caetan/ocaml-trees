

(***********************************************************************


  Developed by Caetán Tojeiro Carpente (caetantojeiro95@gmail.com)
  
  
Copyright (C) 2017  Caetán Tojeiro Carpente

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/agpl-3.0.html>



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
