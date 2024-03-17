(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_policy_set_definition__policy_definition_group = {
  additional_metadata_resource_id : string option; [@option]
      (** additional_metadata_resource_id *)
  category : string option; [@option]  (** category *)
  description : string option; [@option]  (** description *)
  display_name : string option; [@option]  (** display_name *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_policy_set_definition__policy_definition_group *)

type azurerm_policy_set_definition__policy_definition_reference = {
  parameter_values : string option; [@option]
      (** parameter_values *)
  policy_definition_id : string;  (** policy_definition_id *)
  policy_group_names : string list option; [@option]
      (** policy_group_names *)
  reference_id : string option; [@option]  (** reference_id *)
}
[@@deriving yojson_of]
(** azurerm_policy_set_definition__policy_definition_reference *)

type azurerm_policy_set_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_policy_set_definition__timeouts *)

type azurerm_policy_set_definition = {
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  management_group_id : string option; [@option]
      (** management_group_id *)
  name : string;  (** name *)
  parameters : string option; [@option]  (** parameters *)
  policy_type : string;  (** policy_type *)
  policy_definition_group :
    azurerm_policy_set_definition__policy_definition_group list;
  policy_definition_reference :
    azurerm_policy_set_definition__policy_definition_reference list;
  timeouts : azurerm_policy_set_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_policy_set_definition *)

let azurerm_policy_set_definition ?description ?management_group_id
    ?parameters ?timeouts ~display_name ~name ~policy_type
    ~policy_definition_group ~policy_definition_reference
    __resource_id =
  let __resource_type = "azurerm_policy_set_definition" in
  let __resource =
    {
      description;
      display_name;
      management_group_id;
      name;
      parameters;
      policy_type;
      policy_definition_group;
      policy_definition_reference;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_policy_set_definition __resource);
  ()
