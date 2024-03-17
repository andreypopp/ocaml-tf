(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_assembly__timeouts
type azurerm_logic_app_integration_account_assembly

val azurerm_logic_app_integration_account_assembly :
  ?assembly_version:string ->
  ?content:string ->
  ?content_link_uri:string ->
  ?id:string ->
  ?metadata:(string * string) list ->
  ?timeouts:azurerm_logic_app_integration_account_assembly__timeouts ->
  assembly_name:string ->
  integration_account_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
