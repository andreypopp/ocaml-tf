(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_policy_definition *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_policy_definition ?description ?id ?management_group_id
    ?metadata ?parameters ?policy_rule ?timeouts ~display_name ~mode
    ~name ~policy_type () : azurerm_policy_definition =
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

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_id : string prop;
  metadata : string prop;
  mode : string prop;
  name : string prop;
  parameters : string prop;
  policy_rule : string prop;
  policy_type : string prop;
  role_definition_ids : string list prop;
}

let register ?tf_module ?description ?id ?management_group_id
    ?metadata ?parameters ?policy_rule ?timeouts ~display_name ~mode
    ~name ~policy_type __resource_id =
  let __resource_type = "azurerm_policy_definition" in
  let __resource =
    azurerm_policy_definition ?description ?id ?management_group_id
      ?metadata ?parameters ?policy_rule ?timeouts ~display_name
      ~mode ~name ~policy_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_policy_definition __resource);
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
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       policy_rule =
         Prop.computed __resource_type __resource_id "policy_rule";
       policy_type =
         Prop.computed __resource_type __resource_id "policy_type";
       role_definition_ids =
         Prop.computed __resource_type __resource_id
           "role_definition_ids";
     }
      : t)
  in
  __resource_attributes
