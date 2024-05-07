(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type apns_credential

val apns_credential :
  application_mode:string prop ->
  bundle_id:string prop ->
  key_id:string prop ->
  team_id:string prop ->
  token:string prop ->
  unit ->
  apns_credential

type gcm_credential

val gcm_credential : api_key:string prop -> unit -> gcm_credential

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_notification_hub

val azurerm_notification_hub :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?apns_credential:apns_credential list ->
  ?gcm_credential:gcm_credential list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_notification_hub

val yojson_of_azurerm_notification_hub :
  azurerm_notification_hub -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?apns_credential:apns_credential list ->
  ?gcm_credential:gcm_credential list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?apns_credential:apns_credential list ->
  ?gcm_credential:gcm_credential list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
