(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_integration_runtime_azure

val azurerm_data_factory_integration_runtime_azure :
  ?cleanup_enabled:bool prop ->
  ?compute_type:string prop ->
  ?core_count:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?time_to_live_min:float prop ->
  ?virtual_network_enabled:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_integration_runtime_azure

val yojson_of_azurerm_data_factory_integration_runtime_azure :
  azurerm_data_factory_integration_runtime_azure -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cleanup_enabled : bool prop;
  compute_type : string prop;
  core_count : float prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  time_to_live_min : float prop;
  virtual_network_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?cleanup_enabled:bool prop ->
  ?compute_type:string prop ->
  ?core_count:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?time_to_live_min:float prop ->
  ?virtual_network_enabled:bool prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t
