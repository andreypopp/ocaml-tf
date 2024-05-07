(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_fsx_ontap_storage_virtual_machines

val aws_fsx_ontap_storage_virtual_machines :
  ?id:string prop ->
  filter:filter list ->
  unit ->
  aws_fsx_ontap_storage_virtual_machines

val yojson_of_aws_fsx_ontap_storage_virtual_machines :
  aws_fsx_ontap_storage_virtual_machines -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ids : string list prop;
}

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
