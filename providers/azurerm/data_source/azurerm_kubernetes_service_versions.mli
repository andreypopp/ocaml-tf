(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_kubernetes_service_versions

val azurerm_kubernetes_service_versions :
  ?id:string prop ->
  ?include_preview:bool prop ->
  ?version_prefix:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  unit ->
  azurerm_kubernetes_service_versions

val yojson_of_azurerm_kubernetes_service_versions :
  azurerm_kubernetes_service_versions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_version : string prop;
  id : string prop;
  include_preview : bool prop;
  latest_version : string prop;
  location : string prop;
  version_prefix : string prop;
  versions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?include_preview:bool prop ->
  ?version_prefix:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?include_preview:bool prop ->
  ?version_prefix:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  string ->
  t Tf_core.resource
