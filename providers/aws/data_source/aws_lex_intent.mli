(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lex_intent

val aws_lex_intent :
  ?id:string prop ->
  ?version:string prop ->
  name:string prop ->
  unit ->
  aws_lex_intent

val yojson_of_aws_lex_intent : aws_lex_intent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  checksum : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  parent_intent_signature : string prop;
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
