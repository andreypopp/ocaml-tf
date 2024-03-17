(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_active_directory__timeouts
type google_netapp_active_directory

val google_netapp_active_directory :
  ?aes_encryption:bool prop ->
  ?backup_operators:string prop list ->
  ?description:string prop ->
  ?encrypt_dc_connections:bool prop ->
  ?id:string prop ->
  ?kdc_hostname:string prop ->
  ?kdc_ip:string prop ->
  ?labels:(string * string prop) list ->
  ?ldap_signing:bool prop ->
  ?nfs_users_with_ldap:bool prop ->
  ?organizational_unit:string prop ->
  ?project:string prop ->
  ?security_operators:string prop list ->
  ?site:string prop ->
  ?timeouts:google_netapp_active_directory__timeouts ->
  dns:string prop ->
  domain:string prop ->
  location:string prop ->
  name:string prop ->
  net_bios_prefix:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  unit
