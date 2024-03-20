(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sentinel_data_connector_iot = {
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  subscription_id : string prop option; [@option]
      (** subscription_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_iot *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_sentinel_data_connector_iot ?id ?subscription_id
    ?timeouts ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_iot =
  { id; log_analytics_workspace_id; name; subscription_id; timeouts }

type t = {
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  subscription_id : string prop;
}

let make ?id ?subscription_id ?timeouts ~log_analytics_workspace_id
    ~name __id =
  let __type = "azurerm_sentinel_data_connector_iot" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       subscription_id = Prop.computed __type __id "subscription_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_iot
        (azurerm_sentinel_data_connector_iot ?id ?subscription_id
           ?timeouts ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subscription_id ?timeouts
    ~log_analytics_workspace_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?subscription_id ?timeouts ~log_analytics_workspace_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
