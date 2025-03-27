(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ssh_secret_backend_ca

val vault_ssh_secret_backend_ca :
  ?backend:string prop ->
  ?generate_signing_key:bool prop ->
  ?id:string prop ->
  ?key_bits:float prop ->
  ?key_type:string prop ->
  ?namespace:string prop ->
  ?private_key:string prop ->
  ?public_key:string prop ->
  unit ->
  vault_ssh_secret_backend_ca

val yojson_of_vault_ssh_secret_backend_ca : vault_ssh_secret_backend_ca -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  generate_signing_key : bool prop;
  id : string prop;
  key_bits : float prop;
  key_type : string prop;
  namespace : string prop;
  private_key : string prop;
  public_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?generate_signing_key:bool prop ->
  ?id:string prop ->
  ?key_bits:float prop ->
  ?key_type:string prop ->
  ?namespace:string prop ->
  ?private_key:string prop ->
  ?public_key:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?generate_signing_key:bool prop ->
  ?id:string prop ->
  ?key_bits:float prop ->
  ?key_type:string prop ->
  ?namespace:string prop ->
  ?private_key:string prop ->
  ?public_key:string prop ->
  string ->
  t Tf_core.resource
