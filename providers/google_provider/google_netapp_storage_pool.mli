(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_storage_pool__timeouts
type google_netapp_storage_pool

val google_netapp_storage_pool :
  ?active_directory:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_config:string prop ->
  ?labels:(string * string prop) list ->
  ?ldap_enabled:bool prop ->
  ?project:string prop ->
  ?timeouts:google_netapp_storage_pool__timeouts ->
  capacity_gib:string prop ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  service_level:string prop ->
  string ->
  unit
