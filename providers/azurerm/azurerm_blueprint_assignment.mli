(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_blueprint_assignment

val azurerm_blueprint_assignment :
  ?id:string prop ->
  ?lock_exclude_actions:string prop list ->
  ?lock_exclude_principals:string prop list ->
  ?lock_mode:string prop ->
  ?parameter_values:string prop ->
  ?resource_groups:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  target_subscription_id:string prop ->
  version_id:string prop ->
  identity:identity list ->
  unit ->
  azurerm_blueprint_assignment

val yojson_of_azurerm_blueprint_assignment :
  azurerm_blueprint_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?lock_exclude_actions:string prop list ->
  ?lock_exclude_principals:string prop list ->
  ?lock_mode:string prop ->
  ?parameter_values:string prop ->
  ?resource_groups:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  target_subscription_id:string prop ->
  version_id:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?lock_exclude_actions:string prop list ->
  ?lock_exclude_principals:string prop list ->
  ?lock_mode:string prop ->
  ?parameter_values:string prop ->
  ?resource_groups:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  target_subscription_id:string prop ->
  version_id:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource
