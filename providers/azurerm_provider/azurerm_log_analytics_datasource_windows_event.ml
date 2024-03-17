(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_datasource_windows_event__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_datasource_windows_event__timeouts *)

type azurerm_log_analytics_datasource_windows_event = {
  event_log_name : string prop;  (** event_log_name *)
  event_types : string prop list;  (** event_types *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  workspace_name : string prop;  (** workspace_name *)
  timeouts :
    azurerm_log_analytics_datasource_windows_event__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_datasource_windows_event *)

let azurerm_log_analytics_datasource_windows_event ?id ?timeouts
    ~event_log_name ~event_types ~name ~resource_group_name
    ~workspace_name __resource_id =
  let __resource_type =
    "azurerm_log_analytics_datasource_windows_event"
  in
  let __resource =
    {
      event_log_name;
      event_types;
      id;
      name;
      resource_group_name;
      workspace_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_datasource_windows_event
       __resource);
  ()
