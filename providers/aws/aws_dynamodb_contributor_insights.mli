(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_dynamodb_contributor_insights

val aws_dynamodb_contributor_insights :
  ?id:string prop ->
  ?index_name:string prop ->
  ?timeouts:timeouts ->
  table_name:string prop ->
  unit ->
  aws_dynamodb_contributor_insights

val yojson_of_aws_dynamodb_contributor_insights :
  aws_dynamodb_contributor_insights -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  index_name : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?index_name:string prop ->
  ?timeouts:timeouts ->
  table_name:string prop ->
  string ->
  t
