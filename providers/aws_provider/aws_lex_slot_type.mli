(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lex_slot_type__enumeration_value
type aws_lex_slot_type__timeouts
type aws_lex_slot_type

val aws_lex_slot_type :
  ?create_version:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?value_selection_strategy:string prop ->
  ?timeouts:aws_lex_slot_type__timeouts ->
  name:string prop ->
  enumeration_value:aws_lex_slot_type__enumeration_value list ->
  string ->
  unit
