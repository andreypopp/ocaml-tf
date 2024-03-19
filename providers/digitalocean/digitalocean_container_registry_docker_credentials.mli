(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type digitalocean_container_registry_docker_credentials

val digitalocean_container_registry_docker_credentials :
  ?expiry_seconds:float prop ->
  ?id:string prop ->
  ?write:bool prop ->
  registry_name:string prop ->
  unit ->
  digitalocean_container_registry_docker_credentials

val yojson_of_digitalocean_container_registry_docker_credentials :
  digitalocean_container_registry_docker_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  credential_expiration_time : string prop;
  docker_credentials : string prop;
  expiry_seconds : float prop;
  id : string prop;
  registry_name : string prop;
  write : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?expiry_seconds:float prop ->
  ?id:string prop ->
  ?write:bool prop ->
  registry_name:string prop ->
  string ->
  t
