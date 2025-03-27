(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_intermediate_cert_request

val vault_pki_secret_backend_intermediate_cert_request :
  ?add_basic_constraints:bool prop ->
  ?alt_names:string prop list ->
  ?country:string prop ->
  ?exclude_cn_from_sans:bool prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?ip_sans:string prop list ->
  ?key_bits:float prop ->
  ?key_name:string prop ->
  ?key_ref:string prop ->
  ?key_type:string prop ->
  ?key_usage:string prop list ->
  ?locality:string prop ->
  ?managed_key_id:string prop ->
  ?managed_key_name:string prop ->
  ?namespace:string prop ->
  ?organization:string prop ->
  ?other_sans:string prop list ->
  ?ou:string prop ->
  ?postal_code:string prop ->
  ?private_key_format:string prop ->
  ?province:string prop ->
  ?serial_number:string prop ->
  ?signature_bits:float prop ->
  ?street_address:string prop ->
  ?uri_sans:string prop list ->
  backend:string prop ->
  common_name:string prop ->
  type_:string prop ->
  unit ->
  vault_pki_secret_backend_intermediate_cert_request

val yojson_of_vault_pki_secret_backend_intermediate_cert_request :
  vault_pki_secret_backend_intermediate_cert_request -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  add_basic_constraints : bool prop;
  alt_names : string list prop;
  backend : string prop;
  common_name : string prop;
  country : string prop;
  csr : string prop;
  exclude_cn_from_sans : bool prop;
  format : string prop;
  id : string prop;
  ip_sans : string list prop;
  key_bits : float prop;
  key_id : string prop;
  key_name : string prop;
  key_ref : string prop;
  key_type : string prop;
  key_usage : string list prop;
  locality : string prop;
  managed_key_id : string prop;
  managed_key_name : string prop;
  namespace : string prop;
  organization : string prop;
  other_sans : string list prop;
  ou : string prop;
  postal_code : string prop;
  private_key : string prop;
  private_key_format : string prop;
  private_key_type : string prop;
  province : string prop;
  serial_number : string prop;
  signature_bits : float prop;
  street_address : string prop;
  type_ : string prop;
  uri_sans : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?add_basic_constraints:bool prop ->
  ?alt_names:string prop list ->
  ?country:string prop ->
  ?exclude_cn_from_sans:bool prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?ip_sans:string prop list ->
  ?key_bits:float prop ->
  ?key_name:string prop ->
  ?key_ref:string prop ->
  ?key_type:string prop ->
  ?key_usage:string prop list ->
  ?locality:string prop ->
  ?managed_key_id:string prop ->
  ?managed_key_name:string prop ->
  ?namespace:string prop ->
  ?organization:string prop ->
  ?other_sans:string prop list ->
  ?ou:string prop ->
  ?postal_code:string prop ->
  ?private_key_format:string prop ->
  ?province:string prop ->
  ?serial_number:string prop ->
  ?signature_bits:float prop ->
  ?street_address:string prop ->
  ?uri_sans:string prop list ->
  backend:string prop ->
  common_name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?add_basic_constraints:bool prop ->
  ?alt_names:string prop list ->
  ?country:string prop ->
  ?exclude_cn_from_sans:bool prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?ip_sans:string prop list ->
  ?key_bits:float prop ->
  ?key_name:string prop ->
  ?key_ref:string prop ->
  ?key_type:string prop ->
  ?key_usage:string prop list ->
  ?locality:string prop ->
  ?managed_key_id:string prop ->
  ?managed_key_name:string prop ->
  ?namespace:string prop ->
  ?organization:string prop ->
  ?other_sans:string prop list ->
  ?ou:string prop ->
  ?postal_code:string prop ->
  ?private_key_format:string prop ->
  ?province:string prop ->
  ?serial_number:string prop ->
  ?signature_bits:float prop ->
  ?street_address:string prop ->
  ?uri_sans:string prop list ->
  backend:string prop ->
  common_name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
