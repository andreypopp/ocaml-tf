(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_managed_private_endpoint

val azurerm_data_factory_managed_private_endpoint :
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?subresource_name:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  target_resource_id:string prop ->
  unit ->
  azurerm_data_factory_managed_private_endpoint

val yojson_of_azurerm_data_factory_managed_private_endpoint :
  azurerm_data_factory_managed_private_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_factory_id : string prop;
  fqdns : string list prop;
  id : string prop;
  name : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?subresource_name:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  target_resource_id:string prop ->
  string ->
  t
