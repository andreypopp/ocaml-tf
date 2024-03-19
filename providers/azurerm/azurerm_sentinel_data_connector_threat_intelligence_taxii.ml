(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_threat_intelligence_taxii *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_threat_intelligence_taxii ?id
    ?lookback_date ?password ?polling_frequency ?tenant_id ?user_name
    ?timeouts ~api_root_url ~collection_id ~display_name
    ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_threat_intelligence_taxii =
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

type t = {
  api_root_url : string prop;
  collection_id : string prop;
  display_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  lookback_date : string prop;
  name : string prop;
  password : string prop;
  polling_frequency : string prop;
  tenant_id : string prop;
  user_name : string prop;
}

let register ?tf_module ?id ?lookback_date ?password
    ?polling_frequency ?tenant_id ?user_name ?timeouts ~api_root_url
    ~collection_id ~display_name ~log_analytics_workspace_id ~name
    __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_threat_intelligence_taxii"
  in
  let __resource =
    azurerm_sentinel_data_connector_threat_intelligence_taxii ?id
      ?lookback_date ?password ?polling_frequency ?tenant_id
      ?user_name ?timeouts ~api_root_url ~collection_id ~display_name
      ~log_analytics_workspace_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_threat_intelligence_taxii
       __resource);
  let __resource_attributes =
    ({
       api_root_url =
         Prop.computed __resource_type __resource_id "api_root_url";
       collection_id =
         Prop.computed __resource_type __resource_id "collection_id";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       lookback_date =
         Prop.computed __resource_type __resource_id "lookback_date";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       polling_frequency =
         Prop.computed __resource_type __resource_id
           "polling_frequency";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes
