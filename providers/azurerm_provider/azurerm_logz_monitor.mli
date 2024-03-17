(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logz_monitor__plan
type azurerm_logz_monitor__timeouts
type azurerm_logz_monitor__user
type azurerm_logz_monitor

type t = private {
  company_name : string prop;
  enabled : bool prop;
  enterprise_app_id : string prop;
  id : string prop;
  location : string prop;
  logz_organization_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  single_sign_on_url : string prop;
  tags : (string * string) list prop;
}

val azurerm_logz_monitor :
  ?company_name:string prop ->
  ?enabled:bool prop ->
  ?enterprise_app_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_logz_monitor__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:azurerm_logz_monitor__plan list ->
  user:azurerm_logz_monitor__user list ->
  string ->
  t
