(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type okta

val okta :
  ?access_token:string prop ->
  ?api_token:string prop ->
  ?backoff:bool prop ->
  ?base_url:string prop ->
  ?client_id:string prop ->
  ?http_proxy:string prop ->
  ?log_level:float prop ->
  ?max_api_capacity:float prop ->
  ?max_retries:float prop ->
  ?max_wait_seconds:float prop ->
  ?min_wait_seconds:float prop ->
  ?org_name:string prop ->
  ?parallelism:float prop ->
  ?private_key:string prop ->
  ?private_key_id:string prop ->
  ?request_timeout:float prop ->
  ?scopes:string prop list ->
  unit ->
  okta

val yojson_of_okta : okta -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?access_token:string prop ->
  ?api_token:string prop ->
  ?backoff:bool prop ->
  ?base_url:string prop ->
  ?client_id:string prop ->
  ?http_proxy:string prop ->
  ?log_level:float prop ->
  ?max_api_capacity:float prop ->
  ?max_retries:float prop ->
  ?max_wait_seconds:float prop ->
  ?min_wait_seconds:float prop ->
  ?org_name:string prop ->
  ?parallelism:float prop ->
  ?private_key:string prop ->
  ?private_key_id:string prop ->
  ?request_timeout:float prop ->
  ?scopes:string prop list ->
  version:string ->
  unit ->
  unit

val make :
  ?access_token:string prop ->
  ?api_token:string prop ->
  ?backoff:bool prop ->
  ?base_url:string prop ->
  ?client_id:string prop ->
  ?http_proxy:string prop ->
  ?log_level:float prop ->
  ?max_api_capacity:float prop ->
  ?max_retries:float prop ->
  ?max_wait_seconds:float prop ->
  ?min_wait_seconds:float prop ->
  ?org_name:string prop ->
  ?parallelism:float prop ->
  ?private_key:string prop ->
  ?private_key_id:string prop ->
  ?request_timeout:float prop ->
  ?scopes:string prop list ->
  unit ->
  Tf_core.provider
