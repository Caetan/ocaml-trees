

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


open St_tree;;

let is_single t =
	try ramas t ; false
	with Ramas -> true;;

let izq t =
	if (is_single t) then t
	else fst (ramas t);;
	
let dch t =
	if (is_single t) then t
	else snd (ramas t);;
	
let rec size t = 
	if (is_single t) then 1
	else size (dch t) + size (izq t) + 1;;
	
let rec height t =
	if (is_single t) then 1
	else max (height (izq t)) (height (dch t)) +1;;

let rec preorder t =
	if (is_single t) then [raiz t]
	else List.append ((raiz t)::(preorder (izq t))) (preorder (dch t));;

	
let rec postorder t =
	if (is_single t) then [raiz t]
	else (postorder (izq t) @ postorder (dch t)) @ [raiz t];;
	

let rec inorder t =
	if (is_single t) then [raiz t]
	else (inorder (izq t) @ [raiz t]) @ (inorder (dch t));;
	
	
let rec leafs t =
	if (is_single t) then [raiz t]
	else leafs (izq t) @ leafs (dch t);;
	

let rec mirror t =
	if (is_single t) then t
	else comp (raiz t) (mirror (dch t), mirror (izq t));;


let rec treemap f t =
	if (is_single t) then single (f (raiz t))
	else comp (f (raiz t)) (treemap f (izq t), treemap f (dch t));;
