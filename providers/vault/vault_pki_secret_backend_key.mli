(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_key

val vault_pki_secret_backend_key :
  ?id:string prop ->
  ?key_bits:float prop ->
  ?key_name:string prop ->
  ?key_type:string prop ->
  ?managed_key_id:string prop ->
  ?managed_key_name:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  type_:string prop ->
  unit ->
  vault_pki_secret_backend_key

val yojson_of_vault_pki_secret_backend_key : vault_pki_secret_backend_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  key_bits : float prop;
  key_id : string prop;
  key_name : string prop;
  key_type : string prop;
  managed_key_id : string prop;
  managed_key_name : string prop;
  namespace : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key_bits:float prop ->
  ?key_name:string prop ->
  ?key_type:string prop ->
  ?managed_key_id:string prop ->
  ?managed_key_name:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?key_bits:float prop ->
  ?key_name:string prop ->
  ?key_type:string prop ->
  ?managed_key_id:string prop ->
  ?managed_key_name:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
