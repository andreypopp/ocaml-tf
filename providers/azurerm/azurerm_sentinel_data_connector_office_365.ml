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

type azurerm_sentinel_data_connector_office_365 = {
  exchange_enabled : bool prop option; [@option]
      (** exchange_enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  sharepoint_enabled : bool prop option; [@option]
      (** sharepoint_enabled *)
  teams_enabled : bool prop option; [@option]  (** teams_enabled *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_office_365 *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_office_365 ?exchange_enabled ?id
    ?sharepoint_enabled ?teams_enabled ?tenant_id ?timeouts
    ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_office_365 =
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

type t = {
  exchange_enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  sharepoint_enabled : bool prop;
  teams_enabled : bool prop;
  tenant_id : string prop;
}

let register ?tf_module ?exchange_enabled ?id ?sharepoint_enabled
    ?teams_enabled ?tenant_id ?timeouts ~log_analytics_workspace_id
    ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_office_365"
  in
  let __resource =
    azurerm_sentinel_data_connector_office_365 ?exchange_enabled ?id
      ?sharepoint_enabled ?teams_enabled ?tenant_id ?timeouts
      ~log_analytics_workspace_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_office_365 __resource);
  let __resource_attributes =
    ({
       exchange_enabled =
         Prop.computed __resource_type __resource_id
           "exchange_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
       sharepoint_enabled =
         Prop.computed __resource_type __resource_id
           "sharepoint_enabled";
       teams_enabled =
         Prop.computed __resource_type __resource_id "teams_enabled";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes
