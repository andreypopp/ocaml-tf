(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type image_pull_secret = { name : string prop  (** name *) }
type secret = { name : string prop  (** name *) }
type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type kubernetes_service_account

val kubernetes_service_account :
  ?id:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_service_account

val yojson_of_kubernetes_service_account :
  kubernetes_service_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automount_service_account_token : bool prop;
  default_secret_name : string prop;
  id : string prop;
  image_pull_secret : image_pull_secret list prop;
  secret : secret list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
