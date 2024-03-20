(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_resource_group_policy_exemption = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  exemption_category : string prop;  (** exemption_category *)
  expires_on : string prop option; [@option]  (** expires_on *)
  id : string prop option; [@option]  (** id *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  policy_assignment_id : string prop;  (** policy_assignment_id *)
  policy_definition_reference_ids : string prop list option;
      [@option]
      (** policy_definition_reference_ids *)
  resource_group_id : string prop;  (** resource_group_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group_policy_exemption *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_group_policy_exemption ?description
    ?display_name ?expires_on ?id ?metadata
    ?policy_definition_reference_ids ?timeouts ~exemption_category
    ~name ~policy_assignment_id ~resource_group_id () :
    azurerm_resource_group_policy_exemption =
  {
    description;
    display_name;
    exemption_category;
    expires_on;
    id;
    metadata;
    name;
    policy_assignment_id;
    policy_definition_reference_ids;
    resource_group_id;
    timeouts;
  }

type t = {
  description : string prop;
  display_name : string prop;
  exemption_category : string prop;
  expires_on : string prop;
  id : string prop;
  metadata : string prop;
  name : string prop;
  policy_assignment_id : string prop;
  policy_definition_reference_ids : string list prop;
  resource_group_id : string prop;
}

let make ?description ?display_name ?expires_on ?id ?metadata
    ?policy_definition_reference_ids ?timeouts ~exemption_category
    ~name ~policy_assignment_id ~resource_group_id __id =
  let __type = "azurerm_resource_group_policy_exemption" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       exemption_category =
         Prop.computed __type __id "exemption_category";
       expires_on = Prop.computed __type __id "expires_on";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       policy_assignment_id =
         Prop.computed __type __id "policy_assignment_id";
       policy_definition_reference_ids =
         Prop.computed __type __id "policy_definition_reference_ids";
       resource_group_id =
         Prop.computed __type __id "resource_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_group_policy_exemption
        (azurerm_resource_group_policy_exemption ?description
           ?display_name ?expires_on ?id ?metadata
           ?policy_definition_reference_ids ?timeouts
           ~exemption_category ~name ~policy_assignment_id
           ~resource_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?expires_on ?id
    ?metadata ?policy_definition_reference_ids ?timeouts
    ~exemption_category ~name ~policy_assignment_id
    ~resource_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?expires_on ?id ?metadata
      ?policy_definition_reference_ids ?timeouts ~exemption_category
      ~name ~policy_assignment_id ~resource_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
