(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group_policy_remediation__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_remediation__timeouts *)

type azurerm_management_group_policy_remediation = {
  failure_percentage : float prop option; [@option]
      (** failure_percentage *)
  id : string prop option; [@option]  (** id *)
  location_filters : string prop list option; [@option]
      (** location_filters *)
  management_group_id : string prop;  (** management_group_id *)
  name : string prop;  (** name *)
  parallel_deployments : float prop option; [@option]
      (** parallel_deployments *)
  policy_assignment_id : string prop;  (** policy_assignment_id *)
  policy_definition_id : string prop option; [@option]
      (** policy_definition_id *)
  policy_definition_reference_id : string prop option; [@option]
      (** policy_definition_reference_id *)
  resource_count : float prop option; [@option]
      (** resource_count *)
  resource_discovery_mode : string prop option; [@option]
      (** resource_discovery_mode *)
  timeouts :
    azurerm_management_group_policy_remediation__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_remediation *)

type t = {
  failure_percentage : float prop;
  id : string prop;
  location_filters : string list prop;
  management_group_id : string prop;
  name : string prop;
  parallel_deployments : float prop;
  policy_assignment_id : string prop;
  policy_definition_id : string prop;
  policy_definition_reference_id : string prop;
  resource_count : float prop;
  resource_discovery_mode : string prop;
}

let azurerm_management_group_policy_remediation ?failure_percentage
    ?id ?location_filters ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~management_group_id ~name
    ~policy_assignment_id __resource_id =
  let __resource_type =
    "azurerm_management_group_policy_remediation"
  in
  let __resource =
    ({
       failure_percentage;
       id;
       location_filters;
       management_group_id;
       name;
       parallel_deployments;
       policy_assignment_id;
       policy_definition_id;
       policy_definition_reference_id;
       resource_count;
       resource_discovery_mode;
       timeouts;
     }
      : azurerm_management_group_policy_remediation)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group_policy_remediation __resource);
  let __resource_attributes =
    ({
       failure_percentage =
         Prop.computed __resource_type __resource_id
           "failure_percentage";
       id = Prop.computed __resource_type __resource_id "id";
       location_filters =
         Prop.computed __resource_type __resource_id
           "location_filters";
       management_group_id =
         Prop.computed __resource_type __resource_id
           "management_group_id";
       name = Prop.computed __resource_type __resource_id "name";
       parallel_deployments =
         Prop.computed __resource_type __resource_id
           "parallel_deployments";
       policy_assignment_id =
         Prop.computed __resource_type __resource_id
           "policy_assignment_id";
       policy_definition_id =
         Prop.computed __resource_type __resource_id
           "policy_definition_id";
       policy_definition_reference_id =
         Prop.computed __resource_type __resource_id
           "policy_definition_reference_id";
       resource_count =
         Prop.computed __resource_type __resource_id "resource_count";
       resource_discovery_mode =
         Prop.computed __resource_type __resource_id
           "resource_discovery_mode";
     }
      : t)
  in
  __resource_attributes
