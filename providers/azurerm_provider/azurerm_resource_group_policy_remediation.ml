(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_resource_group_policy_remediation__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_policy_remediation__timeouts *)

type azurerm_resource_group_policy_remediation = {
  failure_percentage : float option; [@option]
      (** failure_percentage *)
  location_filters : string list option; [@option]
      (** location_filters *)
  name : string;  (** name *)
  parallel_deployments : float option; [@option]
      (** parallel_deployments *)
  policy_assignment_id : string;  (** policy_assignment_id *)
  policy_definition_id : string option; [@option]
      (** policy_definition_id *)
  policy_definition_reference_id : string option; [@option]
      (** policy_definition_reference_id *)
  resource_count : float option; [@option]  (** resource_count *)
  resource_discovery_mode : string option; [@option]
      (** resource_discovery_mode *)
  resource_group_id : string;  (** resource_group_id *)
  timeouts :
    azurerm_resource_group_policy_remediation__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group_policy_remediation *)

let azurerm_resource_group_policy_remediation ?failure_percentage
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
