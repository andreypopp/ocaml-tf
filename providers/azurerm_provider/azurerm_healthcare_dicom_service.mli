(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_dicom_service__identity
type azurerm_healthcare_dicom_service__timeouts

type azurerm_healthcare_dicom_service__authentication = {
  audience : string list;  (** audience *)
  authority : string;  (** authority *)
}

type azurerm_healthcare_dicom_service__private_endpoint = {
  id : string;  (** id *)
  name : string;  (** name *)
}

type azurerm_healthcare_dicom_service

val azurerm_healthcare_dicom_service :
  ?id:string ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_healthcare_dicom_service__timeouts ->
  location:string ->
  name:string ->
  workspace_id:string ->
  identity:azurerm_healthcare_dicom_service__identity list ->
  string ->
  unit
