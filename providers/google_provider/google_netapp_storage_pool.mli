(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_storage_pool__timeouts
type google_netapp_storage_pool

val google_netapp_storage_pool :
  ?active_directory:string ->
  ?description:string ->
  ?id:string ->
  ?kms_config:string ->
  ?labels:(string * string) list ->
  ?ldap_enabled:bool ->
  ?project:string ->
  ?timeouts:google_netapp_storage_pool__timeouts ->
  capacity_gib:string ->
  location:string ->
  name:string ->
  network:string ->
  service_level:string ->
  string ->
  unit
