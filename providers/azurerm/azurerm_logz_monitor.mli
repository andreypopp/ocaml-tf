(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type plan

val plan :
  ?plan_id:string prop ->
  billing_cycle:string prop ->
  effective_date:string prop ->
  usage_type:string prop ->
  unit ->
  plan

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type user

val user :
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  phone_number:string prop ->
  unit ->
  user

type azurerm_logz_monitor

val azurerm_logz_monitor :
  ?company_name:string prop ->
  ?enabled:bool prop ->
  ?enterprise_app_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:plan list ->
  user:user list ->
  unit ->
  azurerm_logz_monitor

val yojson_of_azurerm_logz_monitor : azurerm_logz_monitor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  company_name : string prop;
  enabled : bool prop;
  enterprise_app_id : string prop;
  id : string prop;
  location : string prop;
  logz_organization_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  single_sign_on_url : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?company_name:string prop ->
  ?enabled:bool prop ->
  ?enterprise_app_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:plan list ->
  user:user list ->
  string ->
  t

val make :
  ?company_name:string prop ->
  ?enabled:bool prop ->
  ?enterprise_app_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  plan:plan list ->
  user:user list ->
  string ->
  t Tf_core.resource
