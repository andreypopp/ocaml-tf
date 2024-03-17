(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_microsoft_cloud_app_security__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_cloud_app_security__timeouts *)

type azurerm_sentinel_data_connector_microsoft_cloud_app_security = {
  alerts_enabled : bool prop option; [@option]  (** alerts_enabled *)
  discovery_logs_enabled : bool prop option; [@option]
      (** discovery_logs_enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  timeouts :
    azurerm_sentinel_data_connector_microsoft_cloud_app_security__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_cloud_app_security *)

let azurerm_sentinel_data_connector_microsoft_cloud_app_security
    ?alerts_enabled ?discovery_logs_enabled ?id ?tenant_id ?timeouts
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_microsoft_cloud_app_security"
  in
  let __resource =
    {
      alerts_enabled;
      discovery_logs_enabled;
      id;
      log_analytics_workspace_id;
      name;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_microsoft_cloud_app_security
       __resource);
  ()
