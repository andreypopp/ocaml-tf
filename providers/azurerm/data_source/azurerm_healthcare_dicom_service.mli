(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication = {
  audience : string prop list;  (** audience *)
  authority : string prop;  (** authority *)
}

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type private_endpoint = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_healthcare_dicom_service

val azurerm_healthcare_dicom_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_healthcare_dicom_service

val yojson_of_azurerm_healthcare_dicom_service :
  azurerm_healthcare_dicom_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authentication : authentication list prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  private_endpoint : private_endpoint list prop;
  service_url : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
