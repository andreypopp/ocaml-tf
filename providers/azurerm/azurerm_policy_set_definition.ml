(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_definition_group = {
  additional_metadata_resource_id : string prop option; [@option]
      (** additional_metadata_resource_id *)
  category : string prop option; [@option]  (** category *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** policy_definition_group *)

type policy_definition_reference = {
  parameter_values : string prop option; [@option]
      (** parameter_values *)
  policy_definition_id : string prop;  (** policy_definition_id *)
  policy_group_names : string prop list option; [@option]
      (** policy_group_names *)
  reference_id : string prop option; [@option]  (** reference_id *)
}
[@@deriving yojson_of]
(** policy_definition_reference *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  policy_definition_group : policy_definition_group list;
  policy_definition_reference : policy_definition_reference list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_policy_set_definition *)

let policy_definition_group ?additional_metadata_resource_id
    ?category ?description ?display_name ~name () :
    policy_definition_group =
  {
    additional_metadata_resource_id;
    category;
    description;
    display_name;
    name;
  }

let policy_definition_reference ?parameter_values ?policy_group_names
    ?reference_id ~policy_definition_id () :
    policy_definition_reference =
  {
    parameter_values;
    policy_definition_id;
    policy_group_names;
    reference_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_policy_set_definition ?description ?id
    ?management_group_id ?metadata ?parameters ?timeouts
    ~display_name ~name ~policy_type ~policy_definition_group
    ~policy_definition_reference () : azurerm_policy_set_definition =
  {
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

let make ?description ?id ?management_group_id ?metadata ?parameters
    ?timeouts ~display_name ~name ~policy_type
    ~policy_definition_group ~policy_definition_reference __id =
  let __type = "azurerm_policy_set_definition" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       management_group_id =
         Prop.computed __type __id "management_group_id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       policy_type = Prop.computed __type __id "policy_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_policy_set_definition
        (azurerm_policy_set_definition ?description ?id
           ?management_group_id ?metadata ?parameters ?timeouts
           ~display_name ~name ~policy_type ~policy_definition_group
           ~policy_definition_reference ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?management_group_id
    ?metadata ?parameters ?timeouts ~display_name ~name ~policy_type
    ~policy_definition_group ~policy_definition_reference __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?management_group_id ?metadata ?parameters
      ?timeouts ~display_name ~name ~policy_type
      ~policy_definition_group ~policy_definition_reference __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
