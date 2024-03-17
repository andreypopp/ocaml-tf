(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_application__plan
type azurerm_managed_application__timeouts
type azurerm_managed_application

type t = private {
  application_definition_id : string prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  name : string prop;
  outputs : (string * string) list prop;
  parameter_values : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_managed_application :
  ?application_definition_id:string prop ->
  ?id:string prop ->
  ?parameter_values:string prop ->
  ?parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_managed_application__timeouts ->
  kind:string prop ->
  location:string prop ->
  managed_resource_group_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:azurerm_managed_application__plan list ->
  string ->
  t
