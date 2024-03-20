(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type cloudflare

val cloudflare :
  ?api_base_path:string prop ->
  ?api_client_logging:bool prop ->
  ?api_hostname:string prop ->
  ?api_key:string prop ->
  ?api_token:string prop ->
  ?api_user_service_key:string prop ->
  ?email:string prop ->
  ?max_backoff:float prop ->
  ?min_backoff:float prop ->
  ?retries:float prop ->
  ?rps:float prop ->
  ?user_agent_operator_suffix:string prop ->
  unit ->
  cloudflare

val yojson_of_cloudflare : cloudflare -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?api_base_path:string prop ->
  ?api_client_logging:bool prop ->
  ?api_hostname:string prop ->
  ?api_key:string prop ->
  ?api_token:string prop ->
  ?api_user_service_key:string prop ->
  ?email:string prop ->
  ?max_backoff:float prop ->
  ?min_backoff:float prop ->
  ?retries:float prop ->
  ?rps:float prop ->
  ?user_agent_operator_suffix:string prop ->
  version:string ->
  unit ->
  unit

val make :
  ?api_base_path:string prop ->
  ?api_client_logging:bool prop ->
  ?api_hostname:string prop ->
  ?api_key:string prop ->
  ?api_token:string prop ->
  ?api_user_service_key:string prop ->
  ?email:string prop ->
  ?max_backoff:float prop ->
  ?min_backoff:float prop ->
  ?retries:float prop ->
  ?rps:float prop ->
  ?user_agent_operator_suffix:string prop ->
  unit ->
  Tf_core.provider
