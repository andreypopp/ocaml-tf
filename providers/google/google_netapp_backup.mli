(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_netapp_backup

val google_netapp_backup :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?source_snapshot:string prop ->
  ?source_volume:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  vault_name:string prop ->
  unit ->
  google_netapp_backup

val yojson_of_google_netapp_backup : google_netapp_backup -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backup_type : string prop;
  chain_storage_bytes : string prop;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  source_snapshot : string prop;
  source_volume : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  vault_name : string prop;
  volume_usage_bytes : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?source_snapshot:string prop ->
  ?source_volume:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  vault_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?source_snapshot:string prop ->
  ?source_volume:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  vault_name:string prop ->
  string ->
  t Tf_core.resource
