(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_mfa_totp

val vault_identity_mfa_totp :
  ?algorithm:string prop ->
  ?digits:float prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?max_validation_attempts:float prop ->
  ?namespace:string prop ->
  ?period:float prop ->
  ?qr_size:float prop ->
  ?skew:float prop ->
  issuer:string prop ->
  unit ->
  vault_identity_mfa_totp

val yojson_of_vault_identity_mfa_totp : vault_identity_mfa_totp -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  algorithm : string prop;
  digits : float prop;
  id : string prop;
  issuer : string prop;
  key_size : float prop;
  max_validation_attempts : float prop;
  method_id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  namespace_id : string prop;
  namespace_path : string prop;
  period : float prop;
  qr_size : float prop;
  skew : float prop;
  type_ : string prop;
  uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?algorithm:string prop ->
  ?digits:float prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?max_validation_attempts:float prop ->
  ?namespace:string prop ->
  ?period:float prop ->
  ?qr_size:float prop ->
  ?skew:float prop ->
  issuer:string prop ->
  string ->
  t

val make :
  ?algorithm:string prop ->
  ?digits:float prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?max_validation_attempts:float prop ->
  ?namespace:string prop ->
  ?period:float prop ->
  ?qr_size:float prop ->
  ?skew:float prop ->
  issuer:string prop ->
  string ->
  t Tf_core.resource
