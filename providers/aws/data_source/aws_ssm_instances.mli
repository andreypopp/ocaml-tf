(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_ssm_instances

val aws_ssm_instances :
  ?id:string prop -> filter:filter list -> unit -> aws_ssm_instances

val yojson_of_aws_ssm_instances : aws_ssm_instances -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; ids : string list prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
