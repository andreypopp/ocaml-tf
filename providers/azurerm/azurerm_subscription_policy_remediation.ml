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

type azurerm_subscription_policy_remediation = {
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
  subscription_id : string prop;  (** subscription_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription_policy_remediation *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subscription_policy_remediation ?failure_percentage ?id
    ?location_filters ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
    ~subscription_id () : azurerm_subscription_policy_remediation =
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
    subscription_id;
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
  subscription_id : string prop;
}

let make ?failure_percentage ?id ?location_filters
    ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
    ~subscription_id __id =
  let __type = "azurerm_subscription_policy_remediation" in
  let __attrs =
    ({
       failure_percentage =
         Prop.computed __type __id "failure_percentage";
       id = Prop.computed __type __id "id";
       location_filters =
         Prop.computed __type __id "location_filters";
       name = Prop.computed __type __id "name";
       parallel_deployments =
         Prop.computed __type __id "parallel_deployments";
       policy_assignment_id =
         Prop.computed __type __id "policy_assignment_id";
       policy_definition_id =
         Prop.computed __type __id "policy_definition_id";
       policy_definition_reference_id =
         Prop.computed __type __id "policy_definition_reference_id";
       resource_count = Prop.computed __type __id "resource_count";
       resource_discovery_mode =
         Prop.computed __type __id "resource_discovery_mode";
       subscription_id = Prop.computed __type __id "subscription_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subscription_policy_remediation
        (azurerm_subscription_policy_remediation ?failure_percentage
           ?id ?location_filters ?parallel_deployments
           ?policy_definition_id ?policy_definition_reference_id
           ?resource_count ?resource_discovery_mode ?timeouts ~name
           ~policy_assignment_id ~subscription_id ());
    attrs = __attrs;
  }

let register ?tf_module ?failure_percentage ?id ?location_filters
    ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
    ~subscription_id __id =
  let (r : _ Tf_core.resource) =
    make ?failure_percentage ?id ?location_filters
      ?parallel_deployments ?policy_definition_id
      ?policy_definition_reference_id ?resource_count
      ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
      ~subscription_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
