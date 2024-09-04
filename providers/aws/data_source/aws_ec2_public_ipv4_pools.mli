(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_ec2_public_ipv4_pools

val aws_ec2_public_ipv4_pools :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  filter:filter list ->
  unit ->
  aws_ec2_public_ipv4_pools

val yojson_of_aws_ec2_public_ipv4_pools :
  aws_ec2_public_ipv4_pools -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  pool_ids : string list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  filter:filter list ->
  string ->
  t Tf_core.resource
