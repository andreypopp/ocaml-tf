(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_healthcare_dicom_service__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_dicom_service__identity *)

type azurerm_healthcare_dicom_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_dicom_service__timeouts *)

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

type azurerm_healthcare_dicom_service = {
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  workspace_id : string;  (** workspace_id *)
  identity : azurerm_healthcare_dicom_service__identity list;
  timeouts : azurerm_healthcare_dicom_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_dicom_service *)

let azurerm_healthcare_dicom_service ?public_network_access_enabled
    ?tags ?timeouts ~location ~name ~workspace_id ~identity
    __resource_id =
  let __resource_type = "azurerm_healthcare_dicom_service" in
  let __resource =
    {
      location;
      name;
      public_network_access_enabled;
      tags;
      workspace_id;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_healthcare_dicom_service __resource);
  ()