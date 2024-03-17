(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_office_365__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_office_365__timeouts *)

type azurerm_sentinel_data_connector_office_365 = {
  exchange_enabled : bool option; [@option]  (** exchange_enabled *)
  id : string option; [@option]  (** id *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  sharepoint_enabled : bool option; [@option]
      (** sharepoint_enabled *)
  teams_enabled : bool option; [@option]  (** teams_enabled *)
  tenant_id : string option; [@option]  (** tenant_id *)
  timeouts :
    azurerm_sentinel_data_connector_office_365__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_office_365 *)

let azurerm_sentinel_data_connector_office_365 ?exchange_enabled ?id
    ?sharepoint_enabled ?teams_enabled ?tenant_id ?timeouts
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_office_365"
  in
  let __resource =
    {
      exchange_enabled;
      id;
      log_analytics_workspace_id;
      name;
      sharepoint_enabled;
      teams_enabled;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_office_365 __resource);
  ()
