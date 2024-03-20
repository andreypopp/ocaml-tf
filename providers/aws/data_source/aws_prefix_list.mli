(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_prefix_list

val aws_prefix_list :
  ?id:string prop ->
  ?name:string prop ->
  ?prefix_list_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_prefix_list

val yojson_of_aws_prefix_list : aws_prefix_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cidr_blocks : string list prop;
  id : string prop;
  name : string prop;
  prefix_list_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?prefix_list_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?prefix_list_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
