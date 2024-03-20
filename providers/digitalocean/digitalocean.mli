(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type digitalocean

val digitalocean :
  ?api_endpoint:string prop ->
  ?http_retry_max:float prop ->
  ?http_retry_wait_max:float prop ->
  ?http_retry_wait_min:float prop ->
  ?requests_per_second:float prop ->
  ?spaces_access_id:string prop ->
  ?spaces_endpoint:string prop ->
  ?spaces_secret_key:string prop ->
  ?token:string prop ->
  unit ->
  digitalocean

val yojson_of_digitalocean : digitalocean -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?api_endpoint:string prop ->
  ?http_retry_max:float prop ->
  ?http_retry_wait_max:float prop ->
  ?http_retry_wait_min:float prop ->
  ?requests_per_second:float prop ->
  ?spaces_access_id:string prop ->
  ?spaces_endpoint:string prop ->
  ?spaces_secret_key:string prop ->
  ?token:string prop ->
  version:string ->
  unit ->
  unit

val make :
  ?api_endpoint:string prop ->
  ?http_retry_max:float prop ->
  ?http_retry_wait_max:float prop ->
  ?http_retry_wait_min:float prop ->
  ?requests_per_second:float prop ->
  ?spaces_access_id:string prop ->
  ?spaces_endpoint:string prop ->
  ?spaces_secret_key:string prop ->
  ?token:string prop ->
  unit ->
  Tf_core.provider
