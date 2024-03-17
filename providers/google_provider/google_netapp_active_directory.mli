(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_active_directory__timeouts
type google_netapp_active_directory

val google_netapp_active_directory :
  ?aes_encryption:bool ->
  ?backup_operators:string list ->
  ?description:string ->
  ?encrypt_dc_connections:bool ->
  ?kdc_hostname:string ->
  ?kdc_ip:string ->
  ?labels:(string * string) list ->
  ?ldap_signing:bool ->
  ?nfs_users_with_ldap:bool ->
  ?security_operators:string list ->
  ?site:string ->
  ?timeouts:google_netapp_active_directory__timeouts ->
  dns:string ->
  domain:string ->
  location:string ->
  name:string ->
  net_bios_prefix:string ->
  password:string ->
  username:string ->
  string ->
  unit
