(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_assembly__timeouts
type azurerm_logic_app_integration_account_assembly

type t = private {
  assembly_name : string prop;
  assembly_version : string prop;
  content : string prop;
  content_link_uri : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_logic_app_integration_account_assembly :
  ?assembly_version:string prop ->
  ?content:string prop ->
  ?content_link_uri:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:azurerm_logic_app_integration_account_assembly__timeouts ->
  assembly_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
