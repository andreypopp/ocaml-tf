(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_db_event_categories

val aws_db_event_categories :
  ?id:string prop ->
  ?source_type:string prop ->
  unit ->
  aws_db_event_categories

val yojson_of_aws_db_event_categories :
  aws_db_event_categories -> json

(** RESOURCE REGISTRATION *)

type t = private {
  event_categories : string list prop;
  id : string prop;
  source_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?source_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?source_type:string prop ->
  string ->
  t Tf_core.resource
