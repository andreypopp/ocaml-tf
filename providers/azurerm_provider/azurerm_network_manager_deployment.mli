(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_deployment__timeouts
type azurerm_network_manager_deployment

type t = private {
  configuration_ids : string list prop;
  id : string prop;
  location : string prop;
  network_manager_id : string prop;
  scope_access : string prop;
  triggers : (string * string) list prop;
}

val azurerm_network_manager_deployment :
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  ?timeouts:azurerm_network_manager_deployment__timeouts ->
  configuration_ids:string prop list ->
  location:string prop ->
  network_manager_id:string prop ->
  scope_access:string prop ->
  string ->
  t
