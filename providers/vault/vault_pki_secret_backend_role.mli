(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type policy_identifier

val policy_identifier : ?cps:string prop -> ?notice:string prop -> oid:string prop -> unit -> policy_identifier

type vault_pki_secret_backend_role

val vault_pki_secret_backend_role :
  ?allow_any_name:bool prop ->
  ?allow_bare_domains:bool prop ->
  ?allow_glob_domains:bool prop ->
  ?allow_ip_sans:bool prop ->
  ?allow_localhost:bool prop ->
  ?allow_subdomains:bool prop ->
  ?allow_wildcard_certificates:bool prop ->
  ?allowed_domains:string prop list ->
  ?allowed_domains_template:bool prop ->
  ?allowed_other_sans:string prop list ->
  ?allowed_serial_numbers:string prop list ->
  ?allowed_uri_sans:string prop list ->
  ?allowed_uri_sans_template:bool prop ->
  ?allowed_user_ids:string prop list ->
  ?basic_constraints_valid_for_non_ca:bool prop ->
  ?client_flag:bool prop ->
  ?cn_validations:string prop list ->
  ?code_signing_flag:bool prop ->
  ?country:string prop list ->
  ?email_protection_flag:bool prop ->
  ?enforce_hostnames:bool prop ->
  ?ext_key_usage:string prop list ->
  ?ext_key_usage_oids:string prop list ->
  ?generate_lease:bool prop ->
  ?id:string prop ->
  ?issuer_ref:string prop ->
  ?key_bits:float prop ->
  ?key_type:string prop ->
  ?key_usage:string prop list ->
  ?locality:string prop list ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?no_store:bool prop ->
  ?no_store_metadata:bool prop ->
  ?not_after:string prop ->
  ?not_before_duration:string prop ->
  ?organization:string prop list ->
  ?ou:string prop list ->
  ?policy_identifiers:string prop list ->
  ?postal_code:string prop list ->
  ?province:string prop list ->
  ?require_cn:bool prop ->
  ?serial_number_source:string prop ->
  ?server_flag:bool prop ->
  ?signature_bits:float prop ->
  ?street_address:string prop list ->
  ?ttl:string prop ->
  ?use_csr_common_name:bool prop ->
  ?use_csr_sans:bool prop ->
  ?use_pss:bool prop ->
  backend:string prop ->
  name:string prop ->
  policy_identifier:policy_identifier list ->
  unit ->
  vault_pki_secret_backend_role

val yojson_of_vault_pki_secret_backend_role : vault_pki_secret_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_any_name : bool prop;
  allow_bare_domains : bool prop;
  allow_glob_domains : bool prop;
  allow_ip_sans : bool prop;
  allow_localhost : bool prop;
  allow_subdomains : bool prop;
  allow_wildcard_certificates : bool prop;
  allowed_domains : string list prop;
  allowed_domains_template : bool prop;
  allowed_other_sans : string list prop;
  allowed_serial_numbers : string list prop;
  allowed_uri_sans : string list prop;
  allowed_uri_sans_template : bool prop;
  allowed_user_ids : string list prop;
  backend : string prop;
  basic_constraints_valid_for_non_ca : bool prop;
  client_flag : bool prop;
  cn_validations : string list prop;
  code_signing_flag : bool prop;
  country : string list prop;
  email_protection_flag : bool prop;
  enforce_hostnames : bool prop;
  ext_key_usage : string list prop;
  ext_key_usage_oids : string list prop;
  generate_lease : bool prop;
  id : string prop;
  issuer_ref : string prop;
  key_bits : float prop;
  key_type : string prop;
  key_usage : string list prop;
  locality : string list prop;
  max_ttl : string prop;
  name : string prop;
  namespace : string prop;
  no_store : bool prop;
  no_store_metadata : bool prop;
  not_after : string prop;
  not_before_duration : string prop;
  organization : string list prop;
  ou : string list prop;
  policy_identifiers : string list prop;
  postal_code : string list prop;
  province : string list prop;
  require_cn : bool prop;
  serial_number_source : string prop;
  server_flag : bool prop;
  signature_bits : float prop;
  street_address : string list prop;
  ttl : string prop;
  use_csr_common_name : bool prop;
  use_csr_sans : bool prop;
  use_pss : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_any_name:bool prop ->
  ?allow_bare_domains:bool prop ->
  ?allow_glob_domains:bool prop ->
  ?allow_ip_sans:bool prop ->
  ?allow_localhost:bool prop ->
  ?allow_subdomains:bool prop ->
  ?allow_wildcard_certificates:bool prop ->
  ?allowed_domains:string prop list ->
  ?allowed_domains_template:bool prop ->
  ?allowed_other_sans:string prop list ->
  ?allowed_serial_numbers:string prop list ->
  ?allowed_uri_sans:string prop list ->
  ?allowed_uri_sans_template:bool prop ->
  ?allowed_user_ids:string prop list ->
  ?basic_constraints_valid_for_non_ca:bool prop ->
  ?client_flag:bool prop ->
  ?cn_validations:string prop list ->
  ?code_signing_flag:bool prop ->
  ?country:string prop list ->
  ?email_protection_flag:bool prop ->
  ?enforce_hostnames:bool prop ->
  ?ext_key_usage:string prop list ->
  ?ext_key_usage_oids:string prop list ->
  ?generate_lease:bool prop ->
  ?id:string prop ->
  ?issuer_ref:string prop ->
  ?key_bits:float prop ->
  ?key_type:string prop ->
  ?key_usage:string prop list ->
  ?locality:string prop list ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?no_store:bool prop ->
  ?no_store_metadata:bool prop ->
  ?not_after:string prop ->
  ?not_before_duration:string prop ->
  ?organization:string prop list ->
  ?ou:string prop list ->
  ?policy_identifiers:string prop list ->
  ?postal_code:string prop list ->
  ?province:string prop list ->
  ?require_cn:bool prop ->
  ?serial_number_source:string prop ->
  ?server_flag:bool prop ->
  ?signature_bits:float prop ->
  ?street_address:string prop list ->
  ?ttl:string prop ->
  ?use_csr_common_name:bool prop ->
  ?use_csr_sans:bool prop ->
  ?use_pss:bool prop ->
  backend:string prop ->
  name:string prop ->
  policy_identifier:policy_identifier list ->
  string ->
  t

val make :
  ?allow_any_name:bool prop ->
  ?allow_bare_domains:bool prop ->
  ?allow_glob_domains:bool prop ->
  ?allow_ip_sans:bool prop ->
  ?allow_localhost:bool prop ->
  ?allow_subdomains:bool prop ->
  ?allow_wildcard_certificates:bool prop ->
  ?allowed_domains:string prop list ->
  ?allowed_domains_template:bool prop ->
  ?allowed_other_sans:string prop list ->
  ?allowed_serial_numbers:string prop list ->
  ?allowed_uri_sans:string prop list ->
  ?allowed_uri_sans_template:bool prop ->
  ?allowed_user_ids:string prop list ->
  ?basic_constraints_valid_for_non_ca:bool prop ->
  ?client_flag:bool prop ->
  ?cn_validations:string prop list ->
  ?code_signing_flag:bool prop ->
  ?country:string prop list ->
  ?email_protection_flag:bool prop ->
  ?enforce_hostnames:bool prop ->
  ?ext_key_usage:string prop list ->
  ?ext_key_usage_oids:string prop list ->
  ?generate_lease:bool prop ->
  ?id:string prop ->
  ?issuer_ref:string prop ->
  ?key_bits:float prop ->
  ?key_type:string prop ->
  ?key_usage:string prop list ->
  ?locality:string prop list ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?no_store:bool prop ->
  ?no_store_metadata:bool prop ->
  ?not_after:string prop ->
  ?not_before_duration:string prop ->
  ?organization:string prop list ->
  ?ou:string prop list ->
  ?policy_identifiers:string prop list ->
  ?postal_code:string prop list ->
  ?province:string prop list ->
  ?require_cn:bool prop ->
  ?serial_number_source:string prop ->
  ?server_flag:bool prop ->
  ?signature_bits:float prop ->
  ?street_address:string prop list ->
  ?ttl:string prop ->
  ?use_csr_common_name:bool prop ->
  ?use_csr_sans:bool prop ->
  ?use_pss:bool prop ->
  backend:string prop ->
  name:string prop ->
  policy_identifier:policy_identifier list ->
  string ->
  t Tf_core.resource
