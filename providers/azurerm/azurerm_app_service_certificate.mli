(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_app_service_certificate

val azurerm_app_service_certificate :
  ?app_service_plan_id:string prop ->
  ?id:string prop ->
  ?key_vault_id:string prop ->
  ?key_vault_secret_id:string prop ->
  ?password:string prop ->
  ?pfx_blob:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_service_certificate

val yojson_of_azurerm_app_service_certificate :
  azurerm_app_service_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_plan_id : string prop;
  expiration_date : string prop;
  friendly_name : string prop;
  host_names : string list prop;
  hosting_environment_profile_id : string prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  key_vault_id : string prop;
  key_vault_secret_id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  pfx_blob : string prop;
  resource_group_name : string prop;
  subject_name : string prop;
  tags : string Tf_core.assoc prop;
  thumbprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_service_plan_id:string prop ->
  ?id:string prop ->
  ?key_vault_id:string prop ->
  ?key_vault_secret_id:string prop ->
  ?password:string prop ->
  ?pfx_blob:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?app_service_plan_id:string prop ->
  ?id:string prop ->
  ?key_vault_id:string prop ->
  ?key_vault_secret_id:string prop ->
  ?password:string prop ->
  ?pfx_blob:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
