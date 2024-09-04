(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type issuance_policy__allowed_issuance_modes

val issuance_policy__allowed_issuance_modes :
  allow_config_based_issuance:bool prop ->
  allow_csr_based_issuance:bool prop ->
  unit ->
  issuance_policy__allowed_issuance_modes

type issuance_policy__allowed_key_types__elliptic_curve

val issuance_policy__allowed_key_types__elliptic_curve :
  signature_algorithm:string prop ->
  unit ->
  issuance_policy__allowed_key_types__elliptic_curve

type issuance_policy__allowed_key_types__rsa

val issuance_policy__allowed_key_types__rsa :
  ?max_modulus_size:string prop ->
  ?min_modulus_size:string prop ->
  unit ->
  issuance_policy__allowed_key_types__rsa

type issuance_policy__allowed_key_types

val issuance_policy__allowed_key_types :
  ?elliptic_curve:
    issuance_policy__allowed_key_types__elliptic_curve list ->
  ?rsa:issuance_policy__allowed_key_types__rsa list ->
  unit ->
  issuance_policy__allowed_key_types

type issuance_policy__baseline_values__additional_extensions__object_id

val issuance_policy__baseline_values__additional_extensions__object_id :
  object_id_path:float prop list ->
  unit ->
  issuance_policy__baseline_values__additional_extensions__object_id

type issuance_policy__baseline_values__additional_extensions

val issuance_policy__baseline_values__additional_extensions :
  critical:bool prop ->
  value:string prop ->
  object_id:
    issuance_policy__baseline_values__additional_extensions__object_id
    list ->
  unit ->
  issuance_policy__baseline_values__additional_extensions

type issuance_policy__baseline_values__ca_options

val issuance_policy__baseline_values__ca_options :
  ?is_ca:bool prop ->
  ?max_issuer_path_length:float prop ->
  ?non_ca:bool prop ->
  ?zero_max_issuer_path_length:bool prop ->
  unit ->
  issuance_policy__baseline_values__ca_options

type issuance_policy__baseline_values__key_usage__base_key_usage

val issuance_policy__baseline_values__key_usage__base_key_usage :
  ?cert_sign:bool prop ->
  ?content_commitment:bool prop ->
  ?crl_sign:bool prop ->
  ?data_encipherment:bool prop ->
  ?decipher_only:bool prop ->
  ?digital_signature:bool prop ->
  ?encipher_only:bool prop ->
  ?key_agreement:bool prop ->
  ?key_encipherment:bool prop ->
  unit ->
  issuance_policy__baseline_values__key_usage__base_key_usage

type issuance_policy__baseline_values__key_usage__extended_key_usage

val issuance_policy__baseline_values__key_usage__extended_key_usage :
  ?client_auth:bool prop ->
  ?code_signing:bool prop ->
  ?email_protection:bool prop ->
  ?ocsp_signing:bool prop ->
  ?server_auth:bool prop ->
  ?time_stamping:bool prop ->
  unit ->
  issuance_policy__baseline_values__key_usage__extended_key_usage

type issuance_policy__baseline_values__key_usage__unknown_extended_key_usages

val issuance_policy__baseline_values__key_usage__unknown_extended_key_usages :
  object_id_path:float prop list ->
  unit ->
  issuance_policy__baseline_values__key_usage__unknown_extended_key_usages

type issuance_policy__baseline_values__key_usage

val issuance_policy__baseline_values__key_usage :
  ?unknown_extended_key_usages:
    issuance_policy__baseline_values__key_usage__unknown_extended_key_usages
    list ->
  base_key_usage:
    issuance_policy__baseline_values__key_usage__base_key_usage list ->
  extended_key_usage:
    issuance_policy__baseline_values__key_usage__extended_key_usage
    list ->
  unit ->
  issuance_policy__baseline_values__key_usage

type issuance_policy__baseline_values__name_constraints

val issuance_policy__baseline_values__name_constraints :
  ?excluded_dns_names:string prop list ->
  ?excluded_email_addresses:string prop list ->
  ?excluded_ip_ranges:string prop list ->
  ?excluded_uris:string prop list ->
  ?permitted_dns_names:string prop list ->
  ?permitted_email_addresses:string prop list ->
  ?permitted_ip_ranges:string prop list ->
  ?permitted_uris:string prop list ->
  critical:bool prop ->
  unit ->
  issuance_policy__baseline_values__name_constraints

type issuance_policy__baseline_values__policy_ids

val issuance_policy__baseline_values__policy_ids :
  object_id_path:float prop list ->
  unit ->
  issuance_policy__baseline_values__policy_ids

type issuance_policy__baseline_values

val issuance_policy__baseline_values :
  ?aia_ocsp_servers:string prop list ->
  ?additional_extensions:
    issuance_policy__baseline_values__additional_extensions list ->
  ?name_constraints:
    issuance_policy__baseline_values__name_constraints list ->
  ?policy_ids:issuance_policy__baseline_values__policy_ids list ->
  ca_options:issuance_policy__baseline_values__ca_options list ->
  key_usage:issuance_policy__baseline_values__key_usage list ->
  unit ->
  issuance_policy__baseline_values

type issuance_policy__identity_constraints__cel_expression

val issuance_policy__identity_constraints__cel_expression :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  issuance_policy__identity_constraints__cel_expression

type issuance_policy__identity_constraints

val issuance_policy__identity_constraints :
  ?cel_expression:
    issuance_policy__identity_constraints__cel_expression list ->
  allow_subject_alt_names_passthrough:bool prop ->
  allow_subject_passthrough:bool prop ->
  unit ->
  issuance_policy__identity_constraints

type issuance_policy

val issuance_policy :
  ?maximum_lifetime:string prop ->
  ?allowed_issuance_modes:
    issuance_policy__allowed_issuance_modes list ->
  ?allowed_key_types:issuance_policy__allowed_key_types list ->
  ?baseline_values:issuance_policy__baseline_values list ->
  ?identity_constraints:issuance_policy__identity_constraints list ->
  unit ->
  issuance_policy

type publishing_options

val publishing_options :
  ?encoding_format:string prop ->
  publish_ca_cert:bool prop ->
  publish_crl:bool prop ->
  unit ->
  publishing_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_privateca_ca_pool

val google_privateca_ca_pool :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?issuance_policy:issuance_policy list ->
  ?publishing_options:publishing_options list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  tier:string prop ->
  unit ->
  google_privateca_ca_pool

val yojson_of_google_privateca_ca_pool :
  google_privateca_ca_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  tier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?issuance_policy:issuance_policy list ->
  ?publishing_options:publishing_options list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  tier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?issuance_policy:issuance_policy list ->
  ?publishing_options:publishing_options list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  tier:string prop ->
  string ->
  t Tf_core.resource
