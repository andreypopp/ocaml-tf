(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_root_sign_intermediate

val vault_pki_secret_backend_root_sign_intermediate :
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
  ?issuer_ref:string prop ->
  ?locality:string prop ->
  ?max_path_length:float prop ->
  ?namespace:string prop ->
  ?not_after:string prop ->
  ?not_before_duration:string prop ->
  ?organization:string prop ->
  ?other_sans:string prop list ->
  ?ou:string prop ->
  ?permitted_dns_domains:string prop list ->
  ?permitted_email_addresses:string prop list ->
  ?permitted_ip_ranges:string prop list ->
  ?permitted_uri_domains:string prop list ->
  ?postal_code:string prop ->
  ?province:string prop ->
  ?revoke:bool prop ->
  ?signature_bits:float prop ->
  ?skid:string prop ->
  ?street_address:string prop ->
  ?ttl:string prop ->
  ?uri_sans:string prop list ->
  ?use_csr_values:bool prop ->
  ?use_pss:bool prop ->
  backend:string prop ->
  common_name:string prop ->
  csr:string prop ->
  unit ->
  vault_pki_secret_backend_root_sign_intermediate

val yojson_of_vault_pki_secret_backend_root_sign_intermediate : vault_pki_secret_backend_root_sign_intermediate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alt_names : string list prop;
  backend : string prop;
  ca_chain : string list prop;
  certificate : string prop;
  certificate_bundle : string prop;
  common_name : string prop;
  country : string prop;
  csr : string prop;
  exclude_cn_from_sans : bool prop;
  excluded_dns_domains : string list prop;
  excluded_email_addresses : string list prop;
  excluded_ip_ranges : string list prop;
  excluded_uri_domains : string list prop;
  format : string prop;
  id : string prop;
  ip_sans : string list prop;
  issuer_ref : string prop;
  issuing_ca : string prop;
  locality : string prop;
  max_path_length : float prop;
  namespace : string prop;
  not_after : string prop;
  not_before_duration : string prop;
  organization : string prop;
  other_sans : string list prop;
  ou : string prop;
  permitted_dns_domains : string list prop;
  permitted_email_addresses : string list prop;
  permitted_ip_ranges : string list prop;
  permitted_uri_domains : string list prop;
  postal_code : string prop;
  province : string prop;
  revoke : bool prop;
  serial_number : string prop;
  signature_bits : float prop;
  skid : string prop;
  street_address : string prop;
  ttl : string prop;
  uri_sans : string list prop;
  use_csr_values : bool prop;
  use_pss : bool prop;
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
  ?issuer_ref:string prop ->
  ?locality:string prop ->
  ?max_path_length:float prop ->
  ?namespace:string prop ->
  ?not_after:string prop ->
  ?not_before_duration:string prop ->
  ?organization:string prop ->
  ?other_sans:string prop list ->
  ?ou:string prop ->
  ?permitted_dns_domains:string prop list ->
  ?permitted_email_addresses:string prop list ->
  ?permitted_ip_ranges:string prop list ->
  ?permitted_uri_domains:string prop list ->
  ?postal_code:string prop ->
  ?province:string prop ->
  ?revoke:bool prop ->
  ?signature_bits:float prop ->
  ?skid:string prop ->
  ?street_address:string prop ->
  ?ttl:string prop ->
  ?uri_sans:string prop list ->
  ?use_csr_values:bool prop ->
  ?use_pss:bool prop ->
  backend:string prop ->
  common_name:string prop ->
  csr:string prop ->
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
  ?issuer_ref:string prop ->
  ?locality:string prop ->
  ?max_path_length:float prop ->
  ?namespace:string prop ->
  ?not_after:string prop ->
  ?not_before_duration:string prop ->
  ?organization:string prop ->
  ?other_sans:string prop list ->
  ?ou:string prop ->
  ?permitted_dns_domains:string prop list ->
  ?permitted_email_addresses:string prop list ->
  ?permitted_ip_ranges:string prop list ->
  ?permitted_uri_domains:string prop list ->
  ?postal_code:string prop ->
  ?province:string prop ->
  ?revoke:bool prop ->
  ?signature_bits:float prop ->
  ?skid:string prop ->
  ?street_address:string prop ->
  ?ttl:string prop ->
  ?uri_sans:string prop list ->
  ?use_csr_values:bool prop ->
  ?use_pss:bool prop ->
  backend:string prop ->
  common_name:string prop ->
  csr:string prop ->
  string ->
  t Tf_core.resource
