(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_data_collection_rule_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule_association__timeouts *)

type azurerm_monitor_data_collection_rule_association = {
  data_collection_endpoint_id : string prop option; [@option]
      (** data_collection_endpoint_id *)
  data_collection_rule_id : string prop option; [@option]
      (** data_collection_rule_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts :
    azurerm_monitor_data_collection_rule_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_rule_association *)

type t = {
  data_collection_endpoint_id : string prop;
  data_collection_rule_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  target_resource_id : string prop;
}

let azurerm_monitor_data_collection_rule_association
    ?data_collection_endpoint_id ?data_collection_rule_id
    ?description ?id ?name ?timeouts ~target_resource_id
    __resource_id =
  let __resource_type =
    "azurerm_monitor_data_collection_rule_association"
  in
  let __resource =
    ({
       data_collection_endpoint_id;
       data_collection_rule_id;
       description;
       id;
       name;
       target_resource_id;
       timeouts;
     }
      : azurerm_monitor_data_collection_rule_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_data_collection_rule_association
       __resource);
  let __resource_attributes =
    ({
       data_collection_endpoint_id =
         Prop.computed __resource_type __resource_id
           "data_collection_endpoint_id";
       data_collection_rule_id =
         Prop.computed __resource_type __resource_id
           "data_collection_rule_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
     }
      : t)
  in
  __resource_attributes
