(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_dicom_service__identity
type azurerm_healthcare_dicom_service__timeouts

type azurerm_healthcare_dicom_service__authentication = {
  audience : string list;  (** audience *)
  authority : string;  (** authority *)
}
[@@deriving yojson_of]

type azurerm_healthcare_dicom_service__private_endpoint = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_healthcare_dicom_service

val azurerm_healthcare_dicom_service :
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_healthcare_dicom_service__timeouts ->
  location:string ->
  name:string ->
  workspace_id:string ->
  identity:azurerm_healthcare_dicom_service__identity list ->
  string ->
  unit
