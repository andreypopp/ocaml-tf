(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthbot__timeouts
type azurerm_healthbot

type t = private {
  bot_management_portal_url : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_healthbot :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_healthbot__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
