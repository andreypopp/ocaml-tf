(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_policy_set_definition__policy_definition_group = {
  additional_metadata_resource_id : string prop option; [@option]
      (** additional_metadata_resource_id *)
  category : string prop option; [@option]  (** category *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_policy_set_definition__policy_definition_group *)

type azurerm_policy_set_definition__policy_definition_reference = {
  parameter_values : string prop option; [@option]
      (** parameter_values *)
  policy_definition_id : string prop;  (** policy_definition_id *)
  policy_group_names : string prop list option; [@option]
      (** policy_group_names *)
  reference_id : string prop option; [@option]  (** reference_id *)
}
[@@deriving yojson_of]
(** azurerm_policy_set_definition__policy_definition_reference *)

type azurerm_policy_set_definition__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_policy_set_definition__timeouts *)

type azurerm_policy_set_definition = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop option; [@option]
      (** management_group_id *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  policy_type : string prop;  (** policy_type *)
  policy_definition_group :
    azurerm_policy_set_definition__policy_definition_group list;
  policy_definition_reference :
    azurerm_policy_set_definition__policy_definition_reference list;
  timeouts : azurerm_policy_set_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_policy_set_definition *)

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_id : string prop;
  metadata : string prop;
  name : string prop;
  parameters : string prop;
  policy_type : string prop;
}

let azurerm_policy_set_definition ?description ?id
    ?management_group_id ?metadata ?parameters ?timeouts
    ~display_name ~name ~policy_type ~policy_definition_group
    ~policy_definition_reference __resource_id =
  let __resource_type = "azurerm_policy_set_definition" in
  let __resource =
    ({
       description;
       display_name;
       id;
       management_group_id;
       metadata;
       name;
       parameters;
       policy_type;
       policy_definition_group;
       policy_definition_reference;
       timeouts;
     }
      : azurerm_policy_set_definition)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_policy_set_definition __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       management_group_id =
         Prop.computed __resource_type __resource_id
           "management_group_id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       policy_type =
         Prop.computed __resource_type __resource_id "policy_type";
     }
      : t)
  in
  __resource_attributes
