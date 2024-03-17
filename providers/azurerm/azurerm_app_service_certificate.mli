(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_certificate__timeouts
type azurerm_app_service_certificate

type t = private {
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
  tags : (string * string) list prop;
  thumbprint : string prop;
}

val azurerm_app_service_certificate :
  ?app_service_plan_id:string prop ->
  ?id:string prop ->
  ?key_vault_id:string prop ->
  ?key_vault_secret_id:string prop ->
  ?password:string prop ->
  ?pfx_blob:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_app_service_certificate__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
