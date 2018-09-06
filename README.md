# Ocaml basic trees implementations 


Developed by Caetán Tojeiro Carpente (caetantojeiro95@gmail.com)


Basic implementation of two types of binary trees and some functions to work with them.

IMPLEMENTED FUNCTIONS for st_tree and structure:
- type 'a st_tree =
     S of 'a
   | C of 'a * 'a st_tree * 'a st_tree;;
- exception Ramas
- val single : 'a ­> 'a st_tree
- val comp : 'a ­> 'a st_tree * 'a st_tree ­> 'a st_tree
- val raiz : 'a st_tree ­> 'a
- val ramas : 'a st_tree ­> 'a st_tree * 'a st_tree
- val is_single : 'a St_tree.st_tree ­> bool
- val izq : 'a St_tree.St_tree ­> 'a St_tree.st_tree
- val dch : 'a St_tree.st_tree ­> 'a St_tree.st_tree
- val size : 'a St_tree.st_tree ­> int
- val height : 'a St_tree.st_tree ­> int 
- val preorder : 'a St_tree.st_tree ­> 'a list
- val postorder : 'a St_tree.st_tree ­> 'a list
- val inorder : 'a St_tree.st_tree ­> 'a list
- val leafs : 'a St_tree.st_tree ­> 'a list
- val mirror : 'a St_tree.st_tree ­> 'a St_tree.st_tree 
- val treemap : ('a ­> 'b) ­> 'a St_tree.st_tree ­> 'b St_tree.st_tree


IMPLEMENTED FUNCTIONS for bin_tree and structure:
- type 'a bin_tree =
     Empty
   | Node of 'a * 'a bin_tree * 'a bin_tree
- exception Ramas
- val empty : 'a bin_tree
- val comp : 'a ­> 'a bin_tree * 'a bin_tree ­> 'a bin_tree
- val raiz : 'a bin_tree ­> 'a
- val ramas : 'a bin_tree ­> 'a bin_tree * 'a bin_tree
- val is_empty : 'a bin_tree ­> bool
- val izq : 'a bin_tree ­> 'a bin_tree
- val dch : 'a bin_tree ­> 'a bin_tree
- val size : 'a bin_tree ­> int
- val height : 'a bin_tree ­> int
- val preorder : 'a bin_tree ­> 'a list
- val postorder : 'a bin_tree ­> 'a list
- val inorder : 'a bin_tree ­> 'a list
- val leafs : 'a bin_tree ­> 'a list
- val mirror : 'a bin_tree ­> 'a bin_tree
- val treemap : ('a ­> 'b) ­> 'a bin_tree ­> 'b bin_tree


In addition, there are implemented two functions to convert one tree type in the other tree type:
- val bin_tree_of_st_tree : 'a St_tree.st_tree ­> Bin_tree.bin_tree
- val st_tree_of_bin_tree : 'a Bin_tree.bin_tree ­> St_tree.st_tree



**********************************************************************

Copyleft (C) 2017  Caetán Tojeiro Carpente

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

**********************************************************************
