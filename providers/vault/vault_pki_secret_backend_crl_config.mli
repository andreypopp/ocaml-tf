(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_crl_config

val vault_pki_secret_backend_crl_config :
  ?auto_rebuild:bool prop ->
  ?auto_rebuild_grace_period:string prop ->
  ?cross_cluster_revocation:bool prop ->
  ?delta_rebuild_interval:string prop ->
  ?disable:bool prop ->
  ?enable_delta:bool prop ->
  ?expiry:string prop ->
  ?id:string prop ->
  ?max_crl_entries:float prop ->
  ?namespace:string prop ->
  ?ocsp_disable:bool prop ->
  ?ocsp_expiry:string prop ->
  ?unified_crl:bool prop ->
  ?unified_crl_on_existing_paths:bool prop ->
  backend:string prop ->
  unit ->
  vault_pki_secret_backend_crl_config

val yojson_of_vault_pki_secret_backend_crl_config : vault_pki_secret_backend_crl_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_rebuild : bool prop;
  auto_rebuild_grace_period : string prop;
  backend : string prop;
  cross_cluster_revocation : bool prop;
  delta_rebuild_interval : string prop;
  disable : bool prop;
  enable_delta : bool prop;
  expiry : string prop;
  id : string prop;
  max_crl_entries : float prop;
  namespace : string prop;
  ocsp_disable : bool prop;
  ocsp_expiry : string prop;
  unified_crl : bool prop;
  unified_crl_on_existing_paths : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_rebuild:bool prop ->
  ?auto_rebuild_grace_period:string prop ->
  ?cross_cluster_revocation:bool prop ->
  ?delta_rebuild_interval:string prop ->
  ?disable:bool prop ->
  ?enable_delta:bool prop ->
  ?expiry:string prop ->
  ?id:string prop ->
  ?max_crl_entries:float prop ->
  ?namespace:string prop ->
  ?ocsp_disable:bool prop ->
  ?ocsp_expiry:string prop ->
  ?unified_crl:bool prop ->
  ?unified_crl_on_existing_paths:bool prop ->
  backend:string prop ->
  string ->
  t

val make :
  ?auto_rebuild:bool prop ->
  ?auto_rebuild_grace_period:string prop ->
  ?cross_cluster_revocation:bool prop ->
  ?delta_rebuild_interval:string prop ->
  ?disable:bool prop ->
  ?enable_delta:bool prop ->
  ?expiry:string prop ->
  ?id:string prop ->
  ?max_crl_entries:float prop ->
  ?namespace:string prop ->
  ?ocsp_disable:bool prop ->
  ?ocsp_expiry:string prop ->
  ?unified_crl:bool prop ->
  ?unified_crl_on_existing_paths:bool prop ->
  backend:string prop ->
  string ->
  t Tf_core.resource
