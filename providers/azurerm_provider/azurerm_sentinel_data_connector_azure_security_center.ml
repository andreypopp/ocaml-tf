(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_azure_security_center__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_azure_security_center__timeouts *)

type azurerm_sentinel_data_connector_azure_security_center = {
  id : string option; [@option]  (** id *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  subscription_id : string option; [@option]  (** subscription_id *)
  timeouts :
    azurerm_sentinel_data_connector_azure_security_center__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_azure_security_center *)

let azurerm_sentinel_data_connector_azure_security_center ?id
    ?subscription_id ?timeouts ~log_analytics_workspace_id ~name
    __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_azure_security_center"
  in
  let __resource =
    {
      id;
      log_analytics_workspace_id;
      name;
      subscription_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_azure_security_center
       __resource);
  ()
