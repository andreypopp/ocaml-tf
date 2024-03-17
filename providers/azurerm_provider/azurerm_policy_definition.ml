(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_policy_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_policy_definition__timeouts *)

type azurerm_policy_definition = {
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  id : string option; [@option]  (** id *)
  management_group_id : string option; [@option]
      (** management_group_id *)
  metadata : string option; [@option]  (** metadata *)
  mode : string;  (** mode *)
  name : string;  (** name *)
  parameters : string option; [@option]  (** parameters *)
  policy_rule : string option; [@option]  (** policy_rule *)
  policy_type : string;  (** policy_type *)
  timeouts : azurerm_policy_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_policy_definition *)

let azurerm_policy_definition ?description ?id ?management_group_id
    ?metadata ?parameters ?policy_rule ?timeouts ~display_name ~mode
    ~name ~policy_type __resource_id =
  let __resource_type = "azurerm_policy_definition" in
  let __resource =
    {
      description;
      display_name;
      id;
      management_group_id;
      metadata;
      mode;
      name;
      parameters;
      policy_rule;
      policy_type;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_policy_definition __resource);
  ()
