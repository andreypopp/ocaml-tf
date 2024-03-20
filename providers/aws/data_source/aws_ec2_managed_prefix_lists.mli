(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_ec2_managed_prefix_lists

val aws_ec2_managed_prefix_lists :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  unit ->
  aws_ec2_managed_prefix_lists

val yojson_of_aws_ec2_managed_prefix_lists :
  aws_ec2_managed_prefix_lists -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  ids : string list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
