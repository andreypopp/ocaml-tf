(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_azure_access_credentials

val vault_azure_access_credentials :
  ?environment:string prop ->
  ?id:string prop ->
  ?max_cred_validation_seconds:float prop ->
  ?namespace:string prop ->
  ?num_seconds_between_tests:float prop ->
  ?num_sequential_successes:float prop ->
  ?subscription_id:string prop ->
  ?tenant_id:string prop ->
  ?validate_creds:bool prop ->
  backend:string prop ->
  role:string prop ->
  unit ->
  vault_azure_access_credentials

val yojson_of_vault_azure_access_credentials : vault_azure_access_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  client_id : string prop;
  client_secret : string prop;
  environment : string prop;
  id : string prop;
  lease_duration : float prop;
  lease_id : string prop;
  lease_renewable : bool prop;
  lease_start_time : string prop;
  max_cred_validation_seconds : float prop;
  namespace : string prop;
  num_seconds_between_tests : float prop;
  num_sequential_successes : float prop;
  role : string prop;
  subscription_id : string prop;
  tenant_id : string prop;
  validate_creds : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?environment:string prop ->
  ?id:string prop ->
  ?max_cred_validation_seconds:float prop ->
  ?namespace:string prop ->
  ?num_seconds_between_tests:float prop ->
  ?num_sequential_successes:float prop ->
  ?subscription_id:string prop ->
  ?tenant_id:string prop ->
  ?validate_creds:bool prop ->
  backend:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?environment:string prop ->
  ?id:string prop ->
  ?max_cred_validation_seconds:float prop ->
  ?namespace:string prop ->
  ?num_seconds_between_tests:float prop ->
  ?num_sequential_successes:float prop ->
  ?subscription_id:string prop ->
  ?tenant_id:string prop ->
  ?validate_creds:bool prop ->
  backend:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
