(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_account__active_directory
type azurerm_netapp_account__identity
type azurerm_netapp_account__timeouts
type azurerm_netapp_account

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_netapp_account :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_netapp_account__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  active_directory:azurerm_netapp_account__active_directory list ->
  identity:azurerm_netapp_account__identity list ->
  string ->
  t
