(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_container_registry_docker_credentials

val digitalocean_container_registry_docker_credentials :
  ?expiry_seconds:float prop ->
  ?id:string prop ->
  ?write:bool prop ->
  registry_name:string prop ->
  string ->
  unit
