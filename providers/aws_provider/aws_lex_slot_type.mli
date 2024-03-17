(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lex_slot_type__enumeration_value
type aws_lex_slot_type__timeouts
type aws_lex_slot_type

val aws_lex_slot_type :
  ?create_version:bool ->
  ?description:string ->
  ?value_selection_strategy:string ->
  ?timeouts:aws_lex_slot_type__timeouts ->
  name:string ->
  enumeration_value:aws_lex_slot_type__enumeration_value list ->
  string ->
  unit
