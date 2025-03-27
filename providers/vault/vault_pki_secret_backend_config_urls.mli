(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_config_urls

val vault_pki_secret_backend_config_urls :
  ?crl_distribution_points:string prop list ->
  ?enable_templating:bool prop ->
  ?id:string prop ->
  ?issuing_certificates:string prop list ->
  ?namespace:string prop ->
  ?ocsp_servers:string prop list ->
  backend:string prop ->
  unit ->
  vault_pki_secret_backend_config_urls

val yojson_of_vault_pki_secret_backend_config_urls : vault_pki_secret_backend_config_urls -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  crl_distribution_points : string list prop;
  enable_templating : bool prop;
  id : string prop;
  issuing_certificates : string list prop;
  namespace : string prop;
  ocsp_servers : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?crl_distribution_points:string prop list ->
  ?enable_templating:bool prop ->
  ?id:string prop ->
  ?issuing_certificates:string prop list ->
  ?namespace:string prop ->
  ?ocsp_servers:string prop list ->
  backend:string prop ->
  string ->
  t

val make :
  ?crl_distribution_points:string prop list ->
  ?enable_templating:bool prop ->
  ?id:string prop ->
  ?issuing_certificates:string prop list ->
  ?namespace:string prop ->
  ?ocsp_servers:string prop list ->
  backend:string prop ->
  string ->
  t Tf_core.resource
