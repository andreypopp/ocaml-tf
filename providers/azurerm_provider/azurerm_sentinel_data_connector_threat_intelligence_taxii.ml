(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts *)

type azurerm_sentinel_data_connector_threat_intelligence_taxii = {
  api_root_url : string prop;  (** api_root_url *)
  collection_id : string prop;  (** collection_id *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  lookback_date : string prop option; [@option]  (** lookback_date *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  polling_frequency : string prop option; [@option]
      (** polling_frequency *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  user_name : string prop option; [@option]  (** user_name *)
  timeouts :
    azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_threat_intelligence_taxii *)

let azurerm_sentinel_data_connector_threat_intelligence_taxii ?id
    ?lookback_date ?password ?polling_frequency ?tenant_id ?user_name
    ?timeouts ~api_root_url ~collection_id ~display_name
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_threat_intelligence_taxii"
  in
  let __resource =
    {
      api_root_url;
      collection_id;
      display_name;
      id;
      log_analytics_workspace_id;
      lookback_date;
      name;
      password;
      polling_frequency;
      tenant_id;
      user_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_threat_intelligence_taxii
       __resource);
  ()
