(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_dicom_service__identity
type azurerm_healthcare_dicom_service__timeouts

type azurerm_healthcare_dicom_service__authentication = {
  audience : string prop list;  (** audience *)
  authority : string prop;  (** authority *)
}

type azurerm_healthcare_dicom_service__private_endpoint = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type azurerm_healthcare_dicom_service

val azurerm_healthcare_dicom_service :
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_healthcare_dicom_service__timeouts ->
  location:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  identity:azurerm_healthcare_dicom_service__identity list ->
  string ->
  unit
