(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type application_insights

val application_insights :
  instrumentation_key:string prop -> unit -> application_insights

type eventhub

val eventhub :
  ?connection_string:string prop ->
  ?endpoint_uri:string prop ->
  ?user_assigned_identity_client_id:string prop ->
  name:string prop ->
  unit ->
  eventhub

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_logger

val azurerm_api_management_logger :
  ?buffered:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?resource_id:string prop ->
  ?application_insights:application_insights list ->
  ?eventhub:eventhub list ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_logger

val yojson_of_azurerm_api_management_logger :
  azurerm_api_management_logger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  buffered : bool prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?buffered:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?resource_id:string prop ->
  ?application_insights:application_insights list ->
  ?eventhub:eventhub list ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?buffered:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?resource_id:string prop ->
  ?application_insights:application_insights list ->
  ?eventhub:eventhub list ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
