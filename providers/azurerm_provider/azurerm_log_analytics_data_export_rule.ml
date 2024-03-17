(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_data_export_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_data_export_rule__timeouts *)

type azurerm_log_analytics_data_export_rule = {
  destination_resource_id : string;  (** destination_resource_id *)
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  table_names : string list;  (** table_names *)
  workspace_resource_id : string;  (** workspace_resource_id *)
  timeouts : azurerm_log_analytics_data_export_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_data_export_rule *)

let azurerm_log_analytics_data_export_rule ?enabled ?timeouts
    ~destination_resource_id ~name ~resource_group_name ~table_names
    ~workspace_resource_id __resource_id =
  let __resource_type = "azurerm_log_analytics_data_export_rule" in
  let __resource =
    {
      destination_resource_id;
      enabled;
      name;
      resource_group_name;
      table_names;
      workspace_resource_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_data_export_rule __resource);
  ()
