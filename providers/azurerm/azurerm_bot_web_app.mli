(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_web_app__timeouts
type azurerm_bot_web_app

type t = private {
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
  ?timeouts:azurerm_bot_web_app__timeouts ->
  location:string prop ->
  microsoft_app_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t
