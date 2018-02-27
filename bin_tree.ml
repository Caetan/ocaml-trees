

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

type 'a bin_tree =
	Empty
	| Node of 'a * 'a bin_tree * 'a bin_tree;;

exception Ramas;;


let empty = Empty;;


let comp r (i,d) = Node(r,i,d);;


let raiz = function
	Empty -> raise Ramas
	| Node(r,_,_) -> r;;
	
	
	
let ramas = function
	Empty -> raise Ramas
	| Node (_,i,d) -> (i,d);;
	
	
	
let is_empty = function
	Empty -> true
	| _ -> false;;
	
	
let izq = function
	Empty -> raise Ramas
	| Node (_,i,_) -> i;;

let dch = function
	Empty -> raise Ramas
	| Node (_,_,d) -> d;;


let rec size = function
	Empty -> 0
	| Node (r,i,d) -> (size i) + (size d) + 1;;
	
	
let rec height = function
	Empty -> 0
	| Node (r,i,d) -> (max (height i) (height d)) +1;;
	
	
let rec preorder = function
	Empty -> []
	| Node (r,i,d) -> r::(preorder i) @ (preorder d);;
	

let rec postorder = function
	Empty -> []
	| Node (r,i,d) -> (postorder i) @ (postorder d) @ [r];;
	
let rec inorder = function
	Empty -> []
	| Node (r,i,d) -> ((inorder i) @ [r]) @ (inorder d);;
	
let rec leafs = function
	Empty -> []
	| Node (r,Empty,Empty) -> [r]
	| Node (r,i,d) -> leafs i @ leafs d;;
	
let rec mirror = function
	Empty -> Empty
	| Node (r,i,d) -> Node (r,d,i);;
	
let rec treemap f = function
	Empty -> Empty
	| Node (r,i,d) -> Node(f r, treemap f i, treemap f d);;
