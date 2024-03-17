(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_healthcare_medtech_service__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_medtech_service__identity *)

type azurerm_healthcare_medtech_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_medtech_service__timeouts *)

type azurerm_healthcare_medtech_service = {
  device_mapping_json : string;  (** device_mapping_json *)
  eventhub_consumer_group_name : string;
      (** eventhub_consumer_group_name *)
  eventhub_name : string;  (** eventhub_name *)
  eventhub_namespace_name : string;  (** eventhub_namespace_name *)
  location : string;  (** location *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  workspace_id : string;  (** workspace_id *)
  identity : azurerm_healthcare_medtech_service__identity list;
  timeouts : azurerm_healthcare_medtech_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_medtech_service *)

let azurerm_healthcare_medtech_service ?tags ?timeouts
    ~device_mapping_json ~eventhub_consumer_group_name ~eventhub_name
    ~eventhub_namespace_name ~location ~name ~workspace_id ~identity
    __resource_id =
  let __resource_type = "azurerm_healthcare_medtech_service" in
  let __resource =
    {
      device_mapping_json;
      eventhub_consumer_group_name;
      eventhub_name;
      eventhub_namespace_name;
      location;
      name;
      tags;
      workspace_id;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_healthcare_medtech_service __resource);
  ()
