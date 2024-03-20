(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_kubernetes_versions

val digitalocean_kubernetes_versions :
  ?id:string prop ->
  ?version_prefix:string prop ->
  unit ->
  digitalocean_kubernetes_versions

val yojson_of_digitalocean_kubernetes_versions :
  digitalocean_kubernetes_versions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  latest_version : string prop;
  valid_versions : string list prop;
  version_prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?version_prefix:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?version_prefix:string prop ->
  string ->
  t Tf_core.resource
