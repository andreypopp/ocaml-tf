(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_webhook__timeouts
type azurerm_container_registry_webhook

type t = private {
  actions : string list prop;
  custom_headers : (string * string) list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  registry_name : string prop;
  resource_group_name : string prop;
  scope : string prop;
  service_uri : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

val azurerm_container_registry_webhook :
  ?custom_headers:(string * string prop) list ->
  ?id:string prop ->
  ?scope:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_container_registry_webhook__timeouts ->
  actions:string prop list ->
  location:string prop ->
  name:string prop ->
  registry_name:string prop ->
  resource_group_name:string prop ->
  service_uri:string prop ->
  string ->
  t
