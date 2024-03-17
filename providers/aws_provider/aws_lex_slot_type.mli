(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lex_slot_type__enumeration_value
type aws_lex_slot_type__timeouts
type aws_lex_slot_type

type t = private {
  checksum : string prop;
  create_version : bool prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  value_selection_strategy : string prop;
  version : string prop;
}

val aws_lex_slot_type :
  ?create_version:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?value_selection_strategy:string prop ->
  ?timeouts:aws_lex_slot_type__timeouts ->
  name:string prop ->
  enumeration_value:aws_lex_slot_type__enumeration_value list ->
  string ->
  t
