(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_data_collection_endpoint__timeouts
type azurerm_monitor_data_collection_endpoint

type t = private {
  configuration_access_endpoint : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  logs_ingestion_endpoint : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_monitor_data_collection_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_monitor_data_collection_endpoint__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
