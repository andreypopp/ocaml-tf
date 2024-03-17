(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bot_connection__timeouts
type azurerm_bot_connection

type t = private {
  bot_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  scopes : string prop;
  service_provider_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_bot_connection :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?scopes:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_bot_connection__timeouts ->
  bot_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_provider_name:string prop ->
  string ->
  t
