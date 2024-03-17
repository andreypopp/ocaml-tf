(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_container_registry_docker_credentials

type t = private {
  credential_expiration_time : string prop;
  docker_credentials : string prop;
  expiry_seconds : float prop;
  id : string prop;
  registry_name : string prop;
  write : bool prop;
}

val digitalocean_container_registry_docker_credentials :
  ?expiry_seconds:float prop ->
  ?id:string prop ->
  ?write:bool prop ->
  registry_name:string prop ->
  string ->
  t
