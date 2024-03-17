(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iotcentral_application__identity
type azurerm_iotcentral_application__timeouts
type azurerm_iotcentral_application

type t = private {
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  sub_domain : string prop;
  tags : (string * string) list prop;
  template : string prop;
}

val azurerm_iotcentral_application :
  ?display_name:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?template:string prop ->
  ?timeouts:azurerm_iotcentral_application__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sub_domain:string prop ->
  identity:azurerm_iotcentral_application__identity list ->
  string ->
  t
