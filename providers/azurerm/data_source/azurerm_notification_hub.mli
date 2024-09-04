(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type apns_credential = {
  application_mode : string prop;  (** application_mode *)
  bundle_id : string prop;  (** bundle_id *)
  key_id : string prop;  (** key_id *)
  team_id : string prop;  (** team_id *)
  token : string prop;  (** token *)
}

type gcm_credential = { api_key : string prop  (** api_key *) }
type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_notification_hub

val azurerm_notification_hub :
  ?id:string prop ->
  ?timeouts:timeouts ->
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
  apns_credential : apns_credential list prop;
  gcm_credential : gcm_credential list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
