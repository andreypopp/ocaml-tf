(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_issuer

val vault_pki_secret_backend_issuer :
  ?disable_critical_extension_checks:bool prop ->
  ?disable_name_checks:bool prop ->
  ?disable_name_constraint_checks:bool prop ->
  ?disable_path_length_checks:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  issuer_ref:string prop ->
  unit ->
  vault_pki_secret_backend_issuer

val yojson_of_vault_pki_secret_backend_issuer : vault_pki_secret_backend_issuer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  ca_chain : string list prop;
  certificate : string prop;
  disable_critical_extension_checks : bool prop;
  disable_name_checks : bool prop;
  disable_name_constraint_checks : bool prop;
  disable_path_length_checks : bool prop;
  id : string prop;
  issuer_id : string prop;
  issuer_name : string prop;
  issuer_ref : string prop;
  key_id : string prop;
  leaf_not_after_behavior : string prop;
  manual_chain : string list prop;
  namespace : string prop;
  usage : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disable_critical_extension_checks:bool prop ->
  ?disable_name_checks:bool prop ->
  ?disable_name_constraint_checks:bool prop ->
  ?disable_path_length_checks:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  issuer_ref:string prop ->
  string ->
  t

val make :
  ?disable_critical_extension_checks:bool prop ->
  ?disable_name_checks:bool prop ->
  ?disable_name_constraint_checks:bool prop ->
  ?disable_path_length_checks:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  issuer_ref:string prop ->
  string ->
  t Tf_core.resource
