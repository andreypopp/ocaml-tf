(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_root_cert

val vault_pki_secret_backend_root_cert :
  ?alt_names:string prop list ->
  ?country:string prop ->
  ?exclude_cn_from_sans:bool prop ->
  ?excluded_dns_domains:string prop list ->
  ?excluded_email_addresses:string prop list ->
  ?excluded_ip_ranges:string prop list ->
  ?excluded_uri_domains:string prop list ->
  ?format:string prop ->
  ?id:string prop ->
  ?ip_sans:string prop list ->
  ?issuer_name:string prop ->
  ?key_bits:float prop ->
  ?key_name:string prop ->
  ?key_ref:string prop ->
  ?key_type:string prop ->
  ?locality:string prop ->
  ?managed_key_id:string prop ->
  ?managed_key_name:string prop ->
  ?max_path_length:float prop ->
  ?namespace:string prop ->
  ?not_after:string prop ->
  ?organization:string prop ->
  ?other_sans:string prop list ->
  ?ou:string prop ->
  ?permitted_dns_domains:string prop list ->
  ?permitted_email_addresses:string prop list ->
  ?permitted_ip_ranges:string prop list ->
  ?permitted_uri_domains:string prop list ->
  ?postal_code:string prop ->
  ?private_key_format:string prop ->
  ?province:string prop ->
  ?signature_bits:float prop ->
  ?street_address:string prop ->
  ?ttl:string prop ->
  ?uri_sans:string prop list ->
  backend:string prop ->
  common_name:string prop ->
  type_:string prop ->
  unit ->
  vault_pki_secret_backend_root_cert

val yojson_of_vault_pki_secret_backend_root_cert : vault_pki_secret_backend_root_cert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alt_names : string list prop;
  backend : string prop;
  certificate : string prop;
  common_name : string prop;
  country : string prop;
  exclude_cn_from_sans : bool prop;
  excluded_dns_domains : string list prop;
  excluded_email_addresses : string list prop;
  excluded_ip_ranges : string list prop;
  excluded_uri_domains : string list prop;
  format : string prop;
  id : string prop;
  ip_sans : string list prop;
  issuer_id : string prop;
  issuer_name : string prop;
  issuing_ca : string prop;
  key_bits : float prop;
  key_id : string prop;
  key_name : string prop;
  key_ref : string prop;
  key_type : string prop;
  locality : string prop;
  managed_key_id : string prop;
  managed_key_name : string prop;
  max_path_length : float prop;
  namespace : string prop;
  not_after : string prop;
  organization : string prop;
  other_sans : string list prop;
  ou : string prop;
  permitted_dns_domains : string list prop;
  permitted_email_addresses : string list prop;
  permitted_ip_ranges : string list prop;
  permitted_uri_domains : string list prop;
  postal_code : string prop;
  private_key_format : string prop;
  province : string prop;
  serial_number : string prop;
  signature_bits : float prop;
  street_address : string prop;
  ttl : string prop;
  type_ : string prop;
  uri_sans : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?alt_names:string prop list ->
  ?country:string prop ->
  ?exclude_cn_from_sans:bool prop ->
  ?excluded_dns_domains:string prop list ->
  ?excluded_email_addresses:string prop list ->
  ?excluded_ip_ranges:string prop list ->
  ?excluded_uri_domains:string prop list ->
  ?format:string prop ->
  ?id:string prop ->
  ?ip_sans:string prop list ->
  ?issuer_name:string prop ->
  ?key_bits:float prop ->
  ?key_name:string prop ->
  ?key_ref:string prop ->
  ?key_type:string prop ->
  ?locality:string prop ->
  ?managed_key_id:string prop ->
  ?managed_key_name:string prop ->
  ?max_path_length:float prop ->
  ?namespace:string prop ->
  ?not_after:string prop ->
  ?organization:string prop ->
  ?other_sans:string prop list ->
  ?ou:string prop ->
  ?permitted_dns_domains:string prop list ->
  ?permitted_email_addresses:string prop list ->
  ?permitted_ip_ranges:string prop list ->
  ?permitted_uri_domains:string prop list ->
  ?postal_code:string prop ->
  ?private_key_format:string prop ->
  ?province:string prop ->
  ?signature_bits:float prop ->
  ?street_address:string prop ->
  ?ttl:string prop ->
  ?uri_sans:string prop list ->
  backend:string prop ->
  common_name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?alt_names:string prop list ->
  ?country:string prop ->
  ?exclude_cn_from_sans:bool prop ->
  ?excluded_dns_domains:string prop list ->
  ?excluded_email_addresses:string prop list ->
  ?excluded_ip_ranges:string prop list ->
  ?excluded_uri_domains:string prop list ->
  ?format:string prop ->
  ?id:string prop ->
  ?ip_sans:string prop list ->
  ?issuer_name:string prop ->
  ?key_bits:float prop ->
  ?key_name:string prop ->
  ?key_ref:string prop ->
  ?key_type:string prop ->
  ?locality:string prop ->
  ?managed_key_id:string prop ->
  ?managed_key_name:string prop ->
  ?max_path_length:float prop ->
  ?namespace:string prop ->
  ?not_after:string prop ->
  ?organization:string prop ->
  ?other_sans:string prop list ->
  ?ou:string prop ->
  ?permitted_dns_domains:string prop list ->
  ?permitted_email_addresses:string prop list ->
  ?permitted_ip_ranges:string prop list ->
  ?permitted_uri_domains:string prop list ->
  ?postal_code:string prop ->
  ?private_key_format:string prop ->
  ?province:string prop ->
  ?signature_bits:float prop ->
  ?street_address:string prop ->
  ?ttl:string prop ->
  ?uri_sans:string prop list ->
  backend:string prop ->
  common_name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
