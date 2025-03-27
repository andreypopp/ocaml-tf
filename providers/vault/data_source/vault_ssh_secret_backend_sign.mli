(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ssh_secret_backend_sign

val vault_ssh_secret_backend_sign :
  ?cert_type:string prop ->
  ?critical_options:string prop Tf_core.assoc ->
  ?extensions:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?key_id:string prop ->
  ?namespace:string prop ->
  ?ttl:string prop ->
  ?valid_principals:string prop ->
  name:string prop ->
  path:string prop ->
  public_key:string prop ->
  unit ->
  vault_ssh_secret_backend_sign

val yojson_of_vault_ssh_secret_backend_sign : vault_ssh_secret_backend_sign -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cert_type : string prop;
  critical_options : string Tf_core.assoc prop;
  extensions : string Tf_core.assoc prop;
  id : string prop;
  key_id : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  public_key : string prop;
  serial_number : string prop;
  signed_key : string prop;
  ttl : string prop;
  valid_principals : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cert_type:string prop ->
  ?critical_options:string prop Tf_core.assoc ->
  ?extensions:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?key_id:string prop ->
  ?namespace:string prop ->
  ?ttl:string prop ->
  ?valid_principals:string prop ->
  name:string prop ->
  path:string prop ->
  public_key:string prop ->
  string ->
  t

val make :
  ?cert_type:string prop ->
  ?critical_options:string prop Tf_core.assoc ->
  ?extensions:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?key_id:string prop ->
  ?namespace:string prop ->
  ?ttl:string prop ->
  ?valid_principals:string prop ->
  name:string prop ->
  path:string prop ->
  public_key:string prop ->
  string ->
  t Tf_core.resource
