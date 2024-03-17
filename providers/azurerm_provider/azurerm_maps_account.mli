(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maps_account__timeouts
type azurerm_maps_account

type t = private {
  id : string prop;
  local_authentication_enabled : bool prop;
  name : string prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  x_ms_client_id : string prop;
}

val azurerm_maps_account :
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_maps_account__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
