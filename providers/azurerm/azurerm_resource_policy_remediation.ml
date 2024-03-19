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

type azurerm_resource_policy_remediation = {
  failure_percentage : float prop option; [@option]
      (** failure_percentage *)
  id : string prop option; [@option]  (** id *)
  location_filters : string prop list option; [@option]
      (** location_filters *)
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
  resource_id : string prop;  (** resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_policy_remediation *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_policy_remediation ?failure_percentage ?id
    ?location_filters ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
    ~resource_id () : azurerm_resource_policy_remediation =
  {
    failure_percentage;
    id;
    location_filters;
    name;
    parallel_deployments;
    policy_assignment_id;
    policy_definition_id;
    policy_definition_reference_id;
    resource_count;
    resource_discovery_mode;
    resource_id;
    timeouts;
  }

type t = {
  failure_percentage : float prop;
  id : string prop;
  location_filters : string list prop;
  name : string prop;
  parallel_deployments : float prop;
  policy_assignment_id : string prop;
  policy_definition_id : string prop;
  policy_definition_reference_id : string prop;
  resource_count : float prop;
  resource_discovery_mode : string prop;
  resource_id : string prop;
}

let register ?tf_module ?failure_percentage ?id ?location_filters
    ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
    ~resource_id __resource_id =
  let __resource_type = "azurerm_resource_policy_remediation" in
  let __resource =
    azurerm_resource_policy_remediation ?failure_percentage ?id
      ?location_filters ?parallel_deployments ?policy_definition_id
      ?policy_definition_reference_id ?resource_count
      ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
      ~resource_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_policy_remediation __resource);
  let __resource_attributes =
    ({
       failure_percentage =
         Prop.computed __resource_type __resource_id
           "failure_percentage";
       id = Prop.computed __resource_type __resource_id "id";
       location_filters =
         Prop.computed __resource_type __resource_id
           "location_filters";
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
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
     }
      : t)
  in
  __resource_attributes
