(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type kubernetes_resources

val kubernetes_resources :
  ?field_selector:string prop ->
  ?label_selector:string prop ->
  ?limit:float prop ->
  ?namespace:string prop ->
  ?objects:json prop ->
  api_version:string prop ->
  kind:string prop ->
  unit ->
  kubernetes_resources

val yojson_of_kubernetes_resources : kubernetes_resources -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_version : string prop;
  field_selector : string prop;
  kind : string prop;
  label_selector : string prop;
  limit : float prop;
  namespace : string prop;
  objects : json prop;
}

val register :
  ?tf_module:tf_module ->
  ?field_selector:string prop ->
  ?label_selector:string prop ->
  ?limit:float prop ->
  ?namespace:string prop ->
  ?objects:json prop ->
  api_version:string prop ->
  kind:string prop ->
  string ->
  t

val make :
  ?field_selector:string prop ->
  ?label_selector:string prop ->
  ?limit:float prop ->
  ?namespace:string prop ->
  ?objects:json prop ->
  api_version:string prop ->
  kind:string prop ->
  string ->
  t Tf_core.resource
