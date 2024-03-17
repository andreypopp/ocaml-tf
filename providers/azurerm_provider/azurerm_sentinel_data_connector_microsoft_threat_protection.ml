(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_microsoft_threat_protection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_threat_protection__timeouts *)

type azurerm_sentinel_data_connector_microsoft_threat_protection = {
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  timeouts :
    azurerm_sentinel_data_connector_microsoft_threat_protection__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_microsoft_threat_protection *)

let azurerm_sentinel_data_connector_microsoft_threat_protection
    ?timeouts ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_microsoft_threat_protection"
  in
  let __resource = { log_analytics_workspace_id; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_microsoft_threat_protection
       __resource);
  ()
