(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts *)

type azurerm_spring_cloud_new_relic_application_performance_monitoring = {
  agent_enabled : bool option; [@option]  (** agent_enabled *)
  app_name : string;  (** app_name *)
  app_server_port : float option; [@option]  (** app_server_port *)
  audit_mode_enabled : bool option; [@option]
      (** audit_mode_enabled *)
  auto_app_naming_enabled : bool option; [@option]
      (** auto_app_naming_enabled *)
  auto_transaction_naming_enabled : bool option; [@option]
      (** auto_transaction_naming_enabled *)
  custom_tracing_enabled : bool option; [@option]
      (** custom_tracing_enabled *)
  globally_enabled : bool option; [@option]  (** globally_enabled *)
  labels : (string * string) list option; [@option]  (** labels *)
  license_key : string;  (** license_key *)
  name : string;  (** name *)
  spring_cloud_service_id : string;  (** spring_cloud_service_id *)
  timeouts :
    azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_new_relic_application_performance_monitoring *)

let azurerm_spring_cloud_new_relic_application_performance_monitoring
    ?agent_enabled ?app_server_port ?audit_mode_enabled
    ?auto_app_naming_enabled ?auto_transaction_naming_enabled
    ?custom_tracing_enabled ?globally_enabled ?labels ?timeouts
    ~app_name ~license_key ~name ~spring_cloud_service_id
    __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_new_relic_application_performance_monitoring"
  in
  let __resource =
    {
      agent_enabled;
      app_name;
      app_server_port;
      audit_mode_enabled;
      auto_app_naming_enabled;
      auto_transaction_naming_enabled;
      custom_tracing_enabled;
      globally_enabled;
      labels;
      license_key;
      name;
      spring_cloud_service_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_new_relic_application_performance_monitoring
       __resource);
  ()