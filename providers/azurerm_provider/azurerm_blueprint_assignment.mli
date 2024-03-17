(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_blueprint_assignment__identity
type azurerm_blueprint_assignment__timeouts
type azurerm_blueprint_assignment

type t = private {
  blueprint_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  lock_exclude_actions : string list prop;
  lock_exclude_principals : string list prop;
  lock_mode : string prop;
  name : string prop;
  parameter_values : string prop;
  resource_groups : string prop;
  target_subscription_id : string prop;
  type_ : string prop;
  version_id : string prop;
}

val azurerm_blueprint_assignment :
  ?id:string prop ->
  ?lock_exclude_actions:string prop list ->
  ?lock_exclude_principals:string prop list ->
  ?lock_mode:string prop ->
  ?parameter_values:string prop ->
  ?resource_groups:string prop ->
  ?timeouts:azurerm_blueprint_assignment__timeouts ->
  location:string prop ->
  name:string prop ->
  target_subscription_id:string prop ->
  version_id:string prop ->
  identity:azurerm_blueprint_assignment__identity list ->
  string ->
  t
