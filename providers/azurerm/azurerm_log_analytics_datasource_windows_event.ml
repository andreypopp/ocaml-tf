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

type azurerm_log_analytics_datasource_windows_event = {
  event_log_name : string prop;  (** event_log_name *)
  event_types : string prop list;  (** event_types *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  workspace_name : string prop;  (** workspace_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_datasource_windows_event *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_datasource_windows_event ?id ?timeouts
    ~event_log_name ~event_types ~name ~resource_group_name
    ~workspace_name () :
    azurerm_log_analytics_datasource_windows_event =
  {
    event_log_name;
    event_types;
    id;
    name;
    resource_group_name;
    workspace_name;
    timeouts;
  }

type t = {
  event_log_name : string prop;
  event_types : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  workspace_name : string prop;
}

let register ?tf_module ?id ?timeouts ~event_log_name ~event_types
    ~name ~resource_group_name ~workspace_name __resource_id =
  let __resource_type =
    "azurerm_log_analytics_datasource_windows_event"
  in
  let __resource =
    azurerm_log_analytics_datasource_windows_event ?id ?timeouts
      ~event_log_name ~event_types ~name ~resource_group_name
      ~workspace_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_datasource_windows_event
       __resource);
  let __resource_attributes =
    ({
       event_log_name =
         Prop.computed __resource_type __resource_id "event_log_name";
       event_types =
         Prop.computed __resource_type __resource_id "event_types";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       workspace_name =
         Prop.computed __resource_type __resource_id "workspace_name";
     }
      : t)
  in
  __resource_attributes
