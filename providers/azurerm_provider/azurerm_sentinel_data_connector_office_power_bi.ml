(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_office_power_bi__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_office_power_bi__timeouts *)

type azurerm_sentinel_data_connector_office_power_bi = {
  id : string option; [@option]  (** id *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  tenant_id : string option; [@option]  (** tenant_id *)
  timeouts :
    azurerm_sentinel_data_connector_office_power_bi__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_office_power_bi *)

let azurerm_sentinel_data_connector_office_power_bi ?id ?tenant_id
    ?timeouts ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_office_power_bi"
  in
  let __resource =
    { id; log_analytics_workspace_id; name; tenant_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_office_power_bi
       __resource);
  ()
