(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_vpc_security_group_rules

val aws_vpc_security_group_rules :
  ?tags:(string * string prop) list ->
  filter:filter list ->
  unit ->
  aws_vpc_security_group_rules

val yojson_of_aws_vpc_security_group_rules :
  aws_vpc_security_group_rules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  ids : string list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
