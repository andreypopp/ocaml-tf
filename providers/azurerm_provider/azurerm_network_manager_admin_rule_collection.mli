(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_admin_rule_collection__timeouts
type azurerm_network_manager_admin_rule_collection

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  network_group_ids : string list prop;
  security_admin_configuration_id : string prop;
}

val azurerm_network_manager_admin_rule_collection :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_network_manager_admin_rule_collection__timeouts ->
  name:string prop ->
  network_group_ids:string prop list ->
  security_admin_configuration_id:string prop ->
  string ->
  t
