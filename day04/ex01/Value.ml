(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Value.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/01 17:02:31 by agrumbac          #+#    #+#             *)
(*   Updated: 2018/06/01 17:50:59 by agrumbac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack | Queen | King | As

let all = [T2; T3; T4; T5; T6; T7; T8; T9; T10; Jack; Queen; King; As]

let toInt value =
	match value with
	| T2    -> 1
	| T3    -> 2
	| T4    -> 3
	| T5    -> 4
	| T6    -> 5
	| T7    -> 6
	| T8    -> 7
	| T9    -> 8
	| T10   -> 9
	| Jack  -> 10
	| Queen -> 11
	| King  -> 12
	| As    -> 13

let toString value =
	match value with
	| T2    -> "2"
	| T3    -> "3"
	| T4    -> "4"
	| T5    -> "5"
	| T6    -> "6"
	| T7    -> "7"
	| T8    -> "8"
	| T9    -> "9"
	| T10   -> "10"
	| Jack  -> "J"
	| Queen -> "Q"
	| King  -> "K"
	| As    -> "A"

let toStringVerbose value =
	match value with
	| T2    -> "2"
	| T3    -> "3"
	| T4    -> "4"
	| T5    -> "5"
	| T6    -> "6"
	| T7    -> "7"
	| T8    -> "8"
	| T9    -> "9"
	| T10   -> "10"
	| Jack  -> "Jack"
	| Queen -> "Queen"
	| King  -> "King"
	| As    -> "As"

let next value =
	match value with
	| T2    -> T3
	| T3    -> T4
	| T4    -> T5
	| T5    -> T6
	| T6    -> T7
	| T7    -> T8
	| T8    -> T9
	| T9    -> T10
	| T10   -> Jack
	| Jack  -> Queen
	| Queen -> King
	| King  -> As
	| As    -> invalid_arg "Nothing is after As"

let prev value =
	match value with
	| T2    -> invalid_arg "Nothing is before 2"
	| T3    -> T2
	| T4    -> T3
	| T5    -> T4
	| T6    -> T5
	| T7    -> T6
	| T8    -> T7
	| T9    -> T8
	| T10   -> T9
	| Jack  -> T10
	| Queen -> Jack
	| King  -> Queen
	| As    -> King
