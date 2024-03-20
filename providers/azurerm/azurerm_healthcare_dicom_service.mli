(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication = {
  audience : string prop list;  (** audience *)
  authority : string prop;  (** authority *)
}

[@@@deriving.end]

type private_endpoint = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

[@@@deriving.end]

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

type azurerm_healthcare_dicom_service

val azurerm_healthcare_dicom_service :
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  identity:identity list ->
  unit ->
  azurerm_healthcare_dicom_service

val yojson_of_azurerm_healthcare_dicom_service :
  azurerm_healthcare_dicom_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authentication : authentication list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_endpoint : private_endpoint list prop;
  public_network_access_enabled : bool prop;
  service_url : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource
