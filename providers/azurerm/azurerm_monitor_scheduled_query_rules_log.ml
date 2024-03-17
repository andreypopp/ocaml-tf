(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_log__criteria__dimension = {
  name : string prop;  (** name *)
  operator : string prop option; [@option]  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_log__criteria__dimension *)

type azurerm_monitor_scheduled_query_rules_log__criteria = {
  metric_name : string prop;  (** metric_name *)
  dimension :
    azurerm_monitor_scheduled_query_rules_log__criteria__dimension
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_log__criteria *)

type azurerm_monitor_scheduled_query_rules_log__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_log__timeouts *)

type azurerm_monitor_scheduled_query_rules_log = {
  authorized_resource_ids : string prop list option; [@option]
      (** authorized_resource_ids *)
  data_source_id : string prop;  (** data_source_id *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  criteria :
    azurerm_monitor_scheduled_query_rules_log__criteria list;
  timeouts :
    azurerm_monitor_scheduled_query_rules_log__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_log *)

type t = {
  authorized_resource_ids : string list prop;
  data_source_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_monitor_scheduled_query_rules_log
    ?authorized_resource_ids ?description ?enabled ?id ?tags
    ?timeouts ~data_source_id ~location ~name ~resource_group_name
    ~criteria __resource_id =
  let __resource_type =
    "azurerm_monitor_scheduled_query_rules_log"
  in
  let __resource =
    ({
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
      : azurerm_monitor_scheduled_query_rules_log)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_scheduled_query_rules_log __resource);
  let __resource_attributes =
    ({
       authorized_resource_ids =
         Prop.computed __resource_type __resource_id
           "authorized_resource_ids";
       data_source_id =
         Prop.computed __resource_type __resource_id "data_source_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
