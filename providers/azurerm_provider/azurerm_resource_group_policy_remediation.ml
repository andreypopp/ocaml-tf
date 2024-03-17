(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_group_policy_remediation__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_policy_remediation__timeouts *)

type azurerm_resource_group_policy_remediation = {
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
  resource_group_id : string prop;  (** resource_group_id *)
  timeouts :
    azurerm_resource_group_policy_remediation__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group_policy_remediation *)

let azurerm_resource_group_policy_remediation ?failure_percentage ?id
    ?location_filters ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
    ~resource_group_id __resource_id =
  let __resource_type =
    "azurerm_resource_group_policy_remediation"
  in
  let __resource =
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
      resource_group_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_group_policy_remediation __resource);
  ()
