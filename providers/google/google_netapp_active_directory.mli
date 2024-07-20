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

type google_netapp_active_directory

val google_netapp_active_directory :
  ?administrators:string prop list ->
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
  ?timeouts:timeouts ->
  dns:string prop ->
  domain:string prop ->
  location:string prop ->
  name:string prop ->
  net_bios_prefix:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  google_netapp_active_directory

val yojson_of_google_netapp_active_directory :
  google_netapp_active_directory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrators : string list prop;
  aes_encryption : bool prop;
  backup_operators : string list prop;
  create_time : string prop;
  description : string prop;
  dns : string prop;
  domain : string prop;
  effective_labels : (string * string) list prop;
  encrypt_dc_connections : bool prop;
  id : string prop;
  kdc_hostname : string prop;
  kdc_ip : string prop;
  labels : (string * string) list prop;
  ldap_signing : bool prop;
  location : string prop;
  name : string prop;
  net_bios_prefix : string prop;
  nfs_users_with_ldap : bool prop;
  organizational_unit : string prop;
  password : string prop;
  project : string prop;
  security_operators : string list prop;
  site : string prop;
  state : string prop;
  state_details : string prop;
  terraform_labels : (string * string) list prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?administrators:string prop list ->
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
  ?timeouts:timeouts ->
  dns:string prop ->
  domain:string prop ->
  location:string prop ->
  name:string prop ->
  net_bios_prefix:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?administrators:string prop list ->
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
  ?timeouts:timeouts ->
  dns:string prop ->
  domain:string prop ->
  location:string prop ->
  name:string prop ->
  net_bios_prefix:string prop ->
  password:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
