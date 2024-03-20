(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_ssm_maintenance_windows

val aws_ssm_maintenance_windows :
  ?id:string prop ->
  filter:filter list ->
  unit ->
  aws_ssm_maintenance_windows

val yojson_of_aws_ssm_maintenance_windows :
  aws_ssm_maintenance_windows -> json

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
