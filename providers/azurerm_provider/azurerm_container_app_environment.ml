(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_app_environment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_app_environment__timeouts *)

type azurerm_container_app_environment__workload_profile = {
  maximum_count : float;  (** maximum_count *)
  minimum_count : float;  (** minimum_count *)
  name : string;  (** name *)
  workload_profile_type : string;  (** workload_profile_type *)
}
[@@deriving yojson_of]
(** azurerm_container_app_environment__workload_profile *)

type azurerm_container_app_environment = {
  dapr_application_insights_connection_string : string option;
      [@option]
      (** Application Insights connection string used by Dapr to export Service to Service communication telemetry. *)
  id : string option; [@option]  (** id *)
  infrastructure_resource_group_name : string option; [@option]
      (** Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. **Note:** Only valid if a `workload_profile` is specified. If `infrastructure_subnet_id` is specified, this resource group will be created in the same subscription as `infrastructure_subnet_id`. *)
  infrastructure_subnet_id : string option; [@option]
      (** The existing Subnet to use for the Container Apps Control Plane. **NOTE:** The Subnet must have a `/21` or larger address space. *)
  internal_load_balancer_enabled : bool option; [@option]
      (** Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. **Note:** can only be set to `true` if `infrastructure_subnet_id` is specified. *)
  location : string;  (** location *)
  log_analytics_workspace_id : string option; [@option]
      (** The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to. *)
  name : string;
      (** The name of the Container Apps Managed Environment. *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_redundancy_enabled : bool option; [@option]
      (** zone_redundancy_enabled *)
  timeouts : azurerm_container_app_environment__timeouts option;
  workload_profile :
    azurerm_container_app_environment__workload_profile list;
}
[@@deriving yojson_of]
(** azurerm_container_app_environment *)

let azurerm_container_app_environment
    ?dapr_application_insights_connection_string ?id
    ?infrastructure_resource_group_name ?infrastructure_subnet_id
    ?internal_load_balancer_enabled ?log_analytics_workspace_id ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~workload_profile __resource_id =
  let __resource_type = "azurerm_container_app_environment" in
  let __resource =
    {
      dapr_application_insights_connection_string;
      id;
      infrastructure_resource_group_name;
      infrastructure_subnet_id;
      internal_load_balancer_enabled;
      location;
      log_analytics_workspace_id;
      name;
      resource_group_name;
      tags;
      zone_redundancy_enabled;
      timeouts;
      workload_profile;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_app_environment __resource);
  ()
