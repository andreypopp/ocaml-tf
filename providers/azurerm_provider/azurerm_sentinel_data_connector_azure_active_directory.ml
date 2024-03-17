(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_azure_active_directory__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_azure_active_directory__timeouts *)

type azurerm_sentinel_data_connector_azure_active_directory = {
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  timeouts :
    azurerm_sentinel_data_connector_azure_active_directory__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_azure_active_directory *)

let azurerm_sentinel_data_connector_azure_active_directory ?id
    ?tenant_id ?timeouts ~log_analytics_workspace_id ~name
    __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_azure_active_directory"
  in
  let __resource =
    { id; log_analytics_workspace_id; name; tenant_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_azure_active_directory
       __resource);
  ()
