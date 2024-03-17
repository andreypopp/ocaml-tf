(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_policy_definition__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_policy_definition__timeouts *)

type azurerm_policy_definition = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop option; [@option]
      (** management_group_id *)
  metadata : string prop option; [@option]  (** metadata *)
  mode : string prop;  (** mode *)
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  policy_rule : string prop option; [@option]  (** policy_rule *)
  policy_type : string prop;  (** policy_type *)
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
