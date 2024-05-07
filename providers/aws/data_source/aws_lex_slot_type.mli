(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type enumeration_value = {
  synonyms : string prop list;  (** synonyms *)
  value : string prop;  (** value *)
}

type aws_lex_slot_type

val aws_lex_slot_type :
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  unit ->
  aws_lex_slot_type

val yojson_of_aws_lex_slot_type : aws_lex_slot_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  checksum : string prop;
  created_date : string prop;
  description : string prop;
  enumeration_value : enumeration_value list prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  value_selection_strategy : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
