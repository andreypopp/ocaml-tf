(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type enumeration_value

val enumeration_value :
  ?synonyms:string prop list ->
  value:string prop ->
  unit ->
  enumeration_value

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_lex_slot_type

val aws_lex_slot_type :
  ?create_version:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?value_selection_strategy:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  enumeration_value:enumeration_value list ->
  unit ->
  aws_lex_slot_type

val yojson_of_aws_lex_slot_type : aws_lex_slot_type -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?create_version:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?value_selection_strategy:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  enumeration_value:enumeration_value list ->
  string ->
  t
