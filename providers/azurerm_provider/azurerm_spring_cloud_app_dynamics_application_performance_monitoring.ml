(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_app_dynamics_application_performance_monitoring__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_dynamics_application_performance_monitoring__timeouts *)

type azurerm_spring_cloud_app_dynamics_application_performance_monitoring = {
  agent_account_access_key : string prop;
      (** agent_account_access_key *)
  agent_account_name : string prop;  (** agent_account_name *)
  agent_application_name : string prop option; [@option]
      (** agent_application_name *)
  agent_node_name : string prop option; [@option]
      (** agent_node_name *)
  agent_tier_name : string prop option; [@option]
      (** agent_tier_name *)
  agent_unique_host_id : string prop option; [@option]
      (** agent_unique_host_id *)
  controller_host_name : string prop;  (** controller_host_name *)
  controller_port : float prop option; [@option]
      (** controller_port *)
  controller_ssl_enabled : bool prop option; [@option]
      (** controller_ssl_enabled *)
  globally_enabled : bool prop option; [@option]
      (** globally_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  timeouts :
    azurerm_spring_cloud_app_dynamics_application_performance_monitoring__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_dynamics_application_performance_monitoring *)

let azurerm_spring_cloud_app_dynamics_application_performance_monitoring
    ?agent_application_name ?agent_node_name ?agent_tier_name
    ?agent_unique_host_id ?controller_port ?controller_ssl_enabled
    ?globally_enabled ?id ?timeouts ~agent_account_access_key
    ~agent_account_name ~controller_host_name ~name
    ~spring_cloud_service_id __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_app_dynamics_application_performance_monitoring"
  in
  let __resource =
    {
      agent_account_access_key;
      agent_account_name;
      agent_application_name;
      agent_node_name;
      agent_tier_name;
      agent_unique_host_id;
      controller_host_name;
      controller_port;
      controller_ssl_enabled;
      globally_enabled;
      id;
      name;
      spring_cloud_service_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_app_dynamics_application_performance_monitoring
       __resource);
  ()
