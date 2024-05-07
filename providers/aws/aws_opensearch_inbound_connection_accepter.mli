(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_opensearch_inbound_connection_accepter

val aws_opensearch_inbound_connection_accepter :
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_id:string prop ->
  unit ->
  aws_opensearch_inbound_connection_accepter

val yojson_of_aws_opensearch_inbound_connection_accepter :
  aws_opensearch_inbound_connection_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_id : string prop;
  connection_status : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_id:string prop ->
  string ->
  t Tf_core.resource
