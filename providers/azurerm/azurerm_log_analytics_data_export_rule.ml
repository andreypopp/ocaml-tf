(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_data_export_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_data_export_rule__timeouts *)

type azurerm_log_analytics_data_export_rule = {
  destination_resource_id : string prop;
      (** destination_resource_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  table_names : string prop list;  (** table_names *)
  workspace_resource_id : string prop;  (** workspace_resource_id *)
  timeouts : azurerm_log_analytics_data_export_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_data_export_rule *)

type t = {
  destination_resource_id : string prop;
  enabled : bool prop;
  export_rule_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  table_names : string list prop;
  workspace_resource_id : string prop;
}

let azurerm_log_analytics_data_export_rule ?enabled ?id ?timeouts
    ~destination_resource_id ~name ~resource_group_name ~table_names
    ~workspace_resource_id __resource_id =
  let __resource_type = "azurerm_log_analytics_data_export_rule" in
  let __resource =
    ({
       destination_resource_id;
       enabled;
       id;
       name;
       resource_group_name;
       table_names;
       workspace_resource_id;
       timeouts;
     }
      : azurerm_log_analytics_data_export_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_data_export_rule __resource);
  let __resource_attributes =
    ({
       destination_resource_id =
         Prop.computed __resource_type __resource_id
           "destination_resource_id";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       export_rule_id =
         Prop.computed __resource_type __resource_id "export_rule_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       table_names =
         Prop.computed __resource_type __resource_id "table_names";
       workspace_resource_id =
         Prop.computed __resource_type __resource_id
           "workspace_resource_id";
     }
      : t)
  in
  __resource_attributes
