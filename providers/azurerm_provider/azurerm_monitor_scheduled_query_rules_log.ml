(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_log__criteria__dimension = {
  name : string;  (** name *)
  operator : string option; [@option]  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_log__criteria__dimension *)

type azurerm_monitor_scheduled_query_rules_log__criteria = {
  metric_name : string;  (** metric_name *)
  dimension :
    azurerm_monitor_scheduled_query_rules_log__criteria__dimension
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_log__criteria *)

type azurerm_monitor_scheduled_query_rules_log__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_log__timeouts *)

type azurerm_monitor_scheduled_query_rules_log = {
  authorized_resource_ids : string list option; [@option]
      (** authorized_resource_ids *)
  data_source_id : string;  (** data_source_id *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  criteria :
    azurerm_monitor_scheduled_query_rules_log__criteria list;
  timeouts :
    azurerm_monitor_scheduled_query_rules_log__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_log *)

let azurerm_monitor_scheduled_query_rules_log
    ?authorized_resource_ids ?description ?enabled ?id ?tags
    ?timeouts ~data_source_id ~location ~name ~resource_group_name
    ~criteria __resource_id =
  let __resource_type =
    "azurerm_monitor_scheduled_query_rules_log"
  in
  let __resource =
    {
      authorized_resource_ids;
      data_source_id;
      description;
      enabled;
      id;
      location;
      name;
      resource_group_name;
      tags;
      criteria;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_scheduled_query_rules_log __resource);
  ()
