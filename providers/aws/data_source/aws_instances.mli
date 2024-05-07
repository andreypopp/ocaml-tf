(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_instances

val aws_instances :
  ?id:string prop ->
  ?instance_state_names:string prop list ->
  ?instance_tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_instances

val yojson_of_aws_instances : aws_instances -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ids : string list prop;
  instance_state_names : string list prop;
  instance_tags : (string * string) list prop;
  ipv6_addresses : string list prop;
  private_ips : string list prop;
  public_ips : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?instance_state_names:string prop list ->
  ?instance_tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?instance_state_names:string prop list ->
  ?instance_tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
