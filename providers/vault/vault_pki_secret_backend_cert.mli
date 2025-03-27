(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_cert

val vault_pki_secret_backend_cert :
  ?alt_names:string prop list ->
  ?auto_renew:bool prop ->
  ?cert_metadata:string prop ->
  ?exclude_cn_from_sans:bool prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?ip_sans:string prop list ->
  ?issuer_ref:string prop ->
  ?min_seconds_remaining:float prop ->
  ?namespace:string prop ->
  ?not_after:string prop ->
  ?other_sans:string prop list ->
  ?private_key_format:string prop ->
  ?revoke:bool prop ->
  ?revoke_with_key:bool prop ->
  ?ttl:string prop ->
  ?uri_sans:string prop list ->
  ?user_ids:string prop list ->
  backend:string prop ->
  common_name:string prop ->
  name:string prop ->
  unit ->
  vault_pki_secret_backend_cert

val yojson_of_vault_pki_secret_backend_cert : vault_pki_secret_backend_cert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alt_names : string list prop;
  auto_renew : bool prop;
  backend : string prop;
  ca_chain : string prop;
  cert_metadata : string prop;
  certificate : string prop;
  common_name : string prop;
  exclude_cn_from_sans : bool prop;
  expiration : float prop;
  format : string prop;
  id : string prop;
  ip_sans : string list prop;
  issuer_ref : string prop;
  issuing_ca : string prop;
  min_seconds_remaining : float prop;
  name : string prop;
  namespace : string prop;
  not_after : string prop;
  other_sans : string list prop;
  private_key : string prop;
  private_key_format : string prop;
  private_key_type : string prop;
  renew_pending : bool prop;
  revoke : bool prop;
  revoke_with_key : bool prop;
  serial_number : string prop;
  ttl : string prop;
  uri_sans : string list prop;
  user_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?alt_names:string prop list ->
  ?auto_renew:bool prop ->
  ?cert_metadata:string prop ->
  ?exclude_cn_from_sans:bool prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?ip_sans:string prop list ->
  ?issuer_ref:string prop ->
  ?min_seconds_remaining:float prop ->
  ?namespace:string prop ->
  ?not_after:string prop ->
  ?other_sans:string prop list ->
  ?private_key_format:string prop ->
  ?revoke:bool prop ->
  ?revoke_with_key:bool prop ->
  ?ttl:string prop ->
  ?uri_sans:string prop list ->
  ?user_ids:string prop list ->
  backend:string prop ->
  common_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?alt_names:string prop list ->
  ?auto_renew:bool prop ->
  ?cert_metadata:string prop ->
  ?exclude_cn_from_sans:bool prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?ip_sans:string prop list ->
  ?issuer_ref:string prop ->
  ?min_seconds_remaining:float prop ->
  ?namespace:string prop ->
  ?not_after:string prop ->
  ?other_sans:string prop list ->
  ?private_key_format:string prop ->
  ?revoke:bool prop ->
  ?revoke_with_key:bool prop ->
  ?ttl:string prop ->
  ?uri_sans:string prop list ->
  ?user_ids:string prop list ->
  backend:string prop ->
  common_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
