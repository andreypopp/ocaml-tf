(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_mfa_totp

val vault_mfa_totp :
  ?algorithm:string prop ->
  ?digits:float prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?namespace:string prop ->
  ?period:float prop ->
  ?qr_size:float prop ->
  ?skew:float prop ->
  issuer:string prop ->
  name:string prop ->
  unit ->
  vault_mfa_totp

val yojson_of_vault_mfa_totp : vault_mfa_totp -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  algorithm : string prop;
  digits : float prop;
  id : string prop;
  issuer : string prop;
  key_size : float prop;
  name : string prop;
  namespace : string prop;
  period : float prop;
  qr_size : float prop;
  skew : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?algorithm:string prop ->
  ?digits:float prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?namespace:string prop ->
  ?period:float prop ->
  ?qr_size:float prop ->
  ?skew:float prop ->
  issuer:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?algorithm:string prop ->
  ?digits:float prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?namespace:string prop ->
  ?period:float prop ->
  ?qr_size:float prop ->
  ?skew:float prop ->
  issuer:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
