(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_monitor_data_collection_rule_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule_association__timeouts *)

type azurerm_monitor_data_collection_rule_association = {
  data_collection_endpoint_id : string option; [@option]
      (** data_collection_endpoint_id *)
  data_collection_rule_id : string option; [@option]
      (** data_collection_rule_id *)
  description : string option; [@option]  (** description *)
  name : string option; [@option]  (** name *)
  target_resource_id : string;  (** target_resource_id *)
  timeouts :
    azurerm_monitor_data_collection_rule_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule_association *)

let azurerm_monitor_data_collection_rule_association
    ?data_collection_endpoint_id ?data_collection_rule_id
    ?description ?name ?timeouts ~target_resource_id __resource_id =
  let __resource_type =
    "azurerm_monitor_data_collection_rule_association"
  in
  let __resource =
    {
      data_collection_endpoint_id;
      data_collection_rule_id;
      description;
      name;
      target_resource_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_data_collection_rule_association
       __resource);
  ()
