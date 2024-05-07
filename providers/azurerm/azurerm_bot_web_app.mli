(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_bot_web_app

val azurerm_bot_web_app :
  ?developer_app_insights_api_key:string prop ->
  ?developer_app_insights_application_id:string prop ->
  ?developer_app_insights_key:string prop ->
  ?display_name:string prop ->
  ?endpoint:string prop ->
  ?id:string prop ->
  ?luis_app_ids:string prop list ->
  ?luis_key:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  microsoft_app_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  unit ->
  azurerm_bot_web_app

val yojson_of_azurerm_bot_web_app : azurerm_bot_web_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  developer_app_insights_api_key : string prop;
  developer_app_insights_application_id : string prop;
  developer_app_insights_key : string prop;
  display_name : string prop;
  endpoint : string prop;
  id : string prop;
  location : string prop;
  luis_app_ids : string list prop;
  luis_key : string prop;
  microsoft_app_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?developer_app_insights_api_key:string prop ->
  ?developer_app_insights_application_id:string prop ->
  ?developer_app_insights_key:string prop ->
  ?display_name:string prop ->
  ?endpoint:string prop ->
  ?id:string prop ->
  ?luis_app_ids:string prop list ->
  ?luis_key:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  microsoft_app_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t

val make :
  ?developer_app_insights_api_key:string prop ->
  ?developer_app_insights_application_id:string prop ->
  ?developer_app_insights_key:string prop ->
  ?display_name:string prop ->
  ?endpoint:string prop ->
  ?id:string prop ->
  ?luis_app_ids:string prop list ->
  ?luis_key:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  microsoft_app_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t Tf_core.resource
