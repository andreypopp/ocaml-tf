(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_issuer

val vault_pki_secret_backend_issuer :
  ?crl_distribution_points:string prop list ->
  ?disable_critical_extension_checks:bool prop ->
  ?disable_name_checks:bool prop ->
  ?disable_name_constraint_checks:bool prop ->
  ?disable_path_length_checks:bool prop ->
  ?enable_aia_url_templating:bool prop ->
  ?id:string prop ->
  ?issuer_name:string prop ->
  ?issuing_certificates:string prop list ->
  ?leaf_not_after_behavior:string prop ->
  ?manual_chain:string prop list ->
  ?namespace:string prop ->
  ?ocsp_servers:string prop list ->
  ?revocation_signature_algorithm:string prop ->
  ?usage:string prop ->
  backend:string prop ->
  issuer_ref:string prop ->
  unit ->
  vault_pki_secret_backend_issuer

val yojson_of_vault_pki_secret_backend_issuer : vault_pki_secret_backend_issuer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  crl_distribution_points : string list prop;
  disable_critical_extension_checks : bool prop;
  disable_name_checks : bool prop;
  disable_name_constraint_checks : bool prop;
  disable_path_length_checks : bool prop;
  enable_aia_url_templating : bool prop;
  id : string prop;
  issuer_id : string prop;
  issuer_name : string prop;
  issuer_ref : string prop;
  issuing_certificates : string list prop;
  leaf_not_after_behavior : string prop;
  manual_chain : string list prop;
  namespace : string prop;
  ocsp_servers : string list prop;
  revocation_signature_algorithm : string prop;
  usage : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?crl_distribution_points:string prop list ->
  ?disable_critical_extension_checks:bool prop ->
  ?disable_name_checks:bool prop ->
  ?disable_name_constraint_checks:bool prop ->
  ?disable_path_length_checks:bool prop ->
  ?enable_aia_url_templating:bool prop ->
  ?id:string prop ->
  ?issuer_name:string prop ->
  ?issuing_certificates:string prop list ->
  ?leaf_not_after_behavior:string prop ->
  ?manual_chain:string prop list ->
  ?namespace:string prop ->
  ?ocsp_servers:string prop list ->
  ?revocation_signature_algorithm:string prop ->
  ?usage:string prop ->
  backend:string prop ->
  issuer_ref:string prop ->
  string ->
  t

val make :
  ?crl_distribution_points:string prop list ->
  ?disable_critical_extension_checks:bool prop ->
  ?disable_name_checks:bool prop ->
  ?disable_name_constraint_checks:bool prop ->
  ?disable_path_length_checks:bool prop ->
  ?enable_aia_url_templating:bool prop ->
  ?id:string prop ->
  ?issuer_name:string prop ->
  ?issuing_certificates:string prop list ->
  ?leaf_not_after_behavior:string prop ->
  ?manual_chain:string prop list ->
  ?namespace:string prop ->
  ?ocsp_servers:string prop list ->
  ?revocation_signature_algorithm:string prop ->
  ?usage:string prop ->
  backend:string prop ->
  issuer_ref:string prop ->
  string ->
  t Tf_core.resource
