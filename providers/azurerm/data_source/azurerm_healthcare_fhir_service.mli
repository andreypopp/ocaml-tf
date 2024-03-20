(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication = {
  audience : string prop;  (** audience *)
  authority : string prop;  (** authority *)
  smart_proxy_enabled : bool prop;  (** smart_proxy_enabled *)
}

type cors = {
  allowed_headers : string prop list;  (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  credentials_allowed : bool prop;  (** credentials_allowed *)
  max_age_in_seconds : float prop;  (** max_age_in_seconds *)
}

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_healthcare_fhir_service

val azurerm_healthcare_fhir_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_healthcare_fhir_service

val yojson_of_azurerm_healthcare_fhir_service :
  azurerm_healthcare_fhir_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_policy_object_ids : string list prop;
  authentication : authentication list prop;
  configuration_export_storage_account_name : string prop;
  container_registry_login_server_url : string list prop;
  cors : cors list prop;
  id : string prop;
  identity : identity list prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
