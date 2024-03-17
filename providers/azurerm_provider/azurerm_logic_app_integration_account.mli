(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account__timeouts
type azurerm_logic_app_integration_account

type t = private {
  id : string prop;
  integration_service_environment_id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_logic_app_integration_account :
  ?id:string prop ->
  ?integration_service_environment_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_logic_app_integration_account__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
