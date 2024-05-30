(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type webhooks = {
  active : bool prop;  (** active *)
  id : float prop;  (** id *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  url : string prop;  (** url *)
}

type github_repository_webhooks

val github_repository_webhooks :
  ?id:string prop ->
  repository:string prop ->
  unit ->
  github_repository_webhooks

val yojson_of_github_repository_webhooks :
  github_repository_webhooks -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  repository : string prop;
  webhooks : webhooks list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
