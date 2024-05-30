(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type app_auth

val app_auth :
  id:string prop ->
  installation_id:string prop ->
  pem_file:string prop ->
  unit ->
  app_auth

type github

val github :
  ?base_url:string prop ->
  ?insecure:bool prop ->
  ?max_retries:float prop ->
  ?organization:string prop ->
  ?owner:string prop ->
  ?parallel_requests:bool prop ->
  ?read_delay_ms:float prop ->
  ?retry_delay_ms:float prop ->
  ?retryable_errors:float prop list ->
  ?token:string prop ->
  ?write_delay_ms:float prop ->
  ?app_auth:app_auth list ->
  unit ->
  github

val yojson_of_github : github -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?base_url:string prop ->
  ?insecure:bool prop ->
  ?max_retries:float prop ->
  ?organization:string prop ->
  ?owner:string prop ->
  ?parallel_requests:bool prop ->
  ?read_delay_ms:float prop ->
  ?retry_delay_ms:float prop ->
  ?retryable_errors:float prop list ->
  ?token:string prop ->
  ?write_delay_ms:float prop ->
  ?app_auth:app_auth list ->
  version:string ->
  unit ->
  unit

val make :
  ?base_url:string prop ->
  ?insecure:bool prop ->
  ?max_retries:float prop ->
  ?organization:string prop ->
  ?owner:string prop ->
  ?parallel_requests:bool prop ->
  ?read_delay_ms:float prop ->
  ?retry_delay_ms:float prop ->
  ?retryable_errors:float prop list ->
  ?token:string prop ->
  ?write_delay_ms:float prop ->
  ?app_auth:app_auth list ->
  unit ->
  Tf_core.provider
