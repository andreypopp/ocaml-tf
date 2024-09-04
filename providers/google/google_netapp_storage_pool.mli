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

type google_netapp_storage_pool

val google_netapp_storage_pool :
  ?active_directory:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_config:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?ldap_enabled:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  capacity_gib:string prop ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  service_level:string prop ->
  unit ->
  google_netapp_storage_pool

val yojson_of_google_netapp_storage_pool :
  google_netapp_storage_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active_directory : string prop;
  capacity_gib : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  encryption_type : string prop;
  id : string prop;
  kms_config : string prop;
  labels : string Tf_core.assoc prop;
  ldap_enabled : bool prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  service_level : string prop;
  terraform_labels : string Tf_core.assoc prop;
  volume_capacity_gib : string prop;
  volume_count : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?active_directory:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_config:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?ldap_enabled:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  capacity_gib:string prop ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  service_level:string prop ->
  string ->
  t

val make :
  ?active_directory:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_config:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?ldap_enabled:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  capacity_gib:string prop ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  service_level:string prop ->
  string ->
  t Tf_core.resource
