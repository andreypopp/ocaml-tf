(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts *)

type azurerm_spring_cloud_new_relic_application_performance_monitoring = {
  agent_enabled : bool prop option; [@option]  (** agent_enabled *)
  app_name : string prop;  (** app_name *)
  app_server_port : float prop option; [@option]
      (** app_server_port *)
  audit_mode_enabled : bool prop option; [@option]
      (** audit_mode_enabled *)
  auto_app_naming_enabled : bool prop option; [@option]
      (** auto_app_naming_enabled *)
  auto_transaction_naming_enabled : bool prop option; [@option]
      (** auto_transaction_naming_enabled *)
  custom_tracing_enabled : bool prop option; [@option]
      (** custom_tracing_enabled *)
  globally_enabled : bool prop option; [@option]
      (** globally_enabled *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  license_key : string prop;  (** license_key *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  timeouts :
    azurerm_spring_cloud_new_relic_application_performance_monitoring__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_new_relic_application_performance_monitoring *)

type t = {
  agent_enabled : bool prop;
  app_name : string prop;
  app_server_port : float prop;
  audit_mode_enabled : bool prop;
  auto_app_naming_enabled : bool prop;
  auto_transaction_naming_enabled : bool prop;
  custom_tracing_enabled : bool prop;
  globally_enabled : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  license_key : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

let azurerm_spring_cloud_new_relic_application_performance_monitoring
    ?agent_enabled ?app_server_port ?audit_mode_enabled
    ?auto_app_naming_enabled ?auto_transaction_naming_enabled
    ?custom_tracing_enabled ?globally_enabled ?id ?labels ?timeouts
    ~app_name ~license_key ~name ~spring_cloud_service_id
    __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_new_relic_application_performance_monitoring"
  in
  let __resource =
    ({
       agent_enabled;
       app_name;
       app_server_port;
       audit_mode_enabled;
       auto_app_naming_enabled;
       auto_transaction_naming_enabled;
       custom_tracing_enabled;
       globally_enabled;
       id;
       labels;
       license_key;
       name;
       spring_cloud_service_id;
       timeouts;
     }
      : azurerm_spring_cloud_new_relic_application_performance_monitoring)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_new_relic_application_performance_monitoring
       __resource);
  let __resource_attributes =
    ({
       agent_enabled =
         Prop.computed __resource_type __resource_id "agent_enabled";
       app_name =
         Prop.computed __resource_type __resource_id "app_name";
       app_server_port =
         Prop.computed __resource_type __resource_id
           "app_server_port";
       audit_mode_enabled =
         Prop.computed __resource_type __resource_id
           "audit_mode_enabled";
       auto_app_naming_enabled =
         Prop.computed __resource_type __resource_id
           "auto_app_naming_enabled";
       auto_transaction_naming_enabled =
         Prop.computed __resource_type __resource_id
           "auto_transaction_naming_enabled";
       custom_tracing_enabled =
         Prop.computed __resource_type __resource_id
           "custom_tracing_enabled";
       globally_enabled =
         Prop.computed __resource_type __resource_id
           "globally_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       license_key =
         Prop.computed __resource_type __resource_id "license_key";
       name = Prop.computed __resource_type __resource_id "name";
       spring_cloud_service_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_service_id";
     }
      : t)
  in
  __resource_attributes
