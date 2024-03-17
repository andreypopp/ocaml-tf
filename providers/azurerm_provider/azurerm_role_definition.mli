(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_role_definition__permissions
type azurerm_role_definition__timeouts
type azurerm_role_definition

type t = private {
  assignable_scopes : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  role_definition_id : string prop;
  role_definition_resource_id : string prop;
  scope : string prop;
}

val azurerm_role_definition :
  ?assignable_scopes:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?role_definition_id:string prop ->
  ?timeouts:azurerm_role_definition__timeouts ->
  name:string prop ->
  scope:string prop ->
  permissions:azurerm_role_definition__permissions list ->
  string ->
  t
