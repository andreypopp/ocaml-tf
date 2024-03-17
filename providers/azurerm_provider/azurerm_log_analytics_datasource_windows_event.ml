(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_datasource_windows_event__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_datasource_windows_event__timeouts *)

type azurerm_log_analytics_datasource_windows_event = {
  event_log_name : string;  (** event_log_name *)
  event_types : string list;  (** event_types *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  workspace_name : string;  (** workspace_name *)
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
