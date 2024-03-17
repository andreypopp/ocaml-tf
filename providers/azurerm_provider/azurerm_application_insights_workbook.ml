(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_application_insights_workbook__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook__identity *)

type azurerm_application_insights_workbook__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook__timeouts *)

type azurerm_application_insights_workbook = {
  category : string option; [@option]  (** category *)
  data_json : string;  (** data_json *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  source_id : string option; [@option]  (** source_id *)
  storage_container_id : string option; [@option]
      (** storage_container_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_application_insights_workbook__identity list;
  timeouts : azurerm_application_insights_workbook__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook *)

let azurerm_application_insights_workbook ?category ?description
    ?source_id ?storage_container_id ?tags ?timeouts ~data_json
    ~display_name ~location ~name ~resource_group_name ~identity
    __resource_id =
  let __resource_type = "azurerm_application_insights_workbook" in
  let __resource =
    {
      category;
      data_json;
      description;
      display_name;
      location;
      name;
      resource_group_name;
      source_id;
      storage_container_id;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_workbook __resource);
  ()
