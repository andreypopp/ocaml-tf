(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_new_relic_tag_rule__log_tag_filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_new_relic_tag_rule__log_tag_filter *)

type azurerm_new_relic_tag_rule__metric_tag_filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_new_relic_tag_rule__metric_tag_filter *)

type azurerm_new_relic_tag_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_new_relic_tag_rule__timeouts *)

type azurerm_new_relic_tag_rule = {
  activity_log_enabled : bool prop option; [@option]
      (** activity_log_enabled *)
  azure_active_directory_log_enabled : bool prop option; [@option]
      (** azure_active_directory_log_enabled *)
  id : string prop option; [@option]  (** id *)
  metric_enabled : bool prop option; [@option]  (** metric_enabled *)
  monitor_id : string prop;  (** monitor_id *)
  subscription_log_enabled : bool prop option; [@option]
      (** subscription_log_enabled *)
  log_tag_filter : azurerm_new_relic_tag_rule__log_tag_filter list;
  metric_tag_filter :
    azurerm_new_relic_tag_rule__metric_tag_filter list;
  timeouts : azurerm_new_relic_tag_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_new_relic_tag_rule *)

type t = {
  activity_log_enabled : bool prop;
  azure_active_directory_log_enabled : bool prop;
  id : string prop;
  metric_enabled : bool prop;
  monitor_id : string prop;
  subscription_log_enabled : bool prop;
}

let azurerm_new_relic_tag_rule ?activity_log_enabled
    ?azure_active_directory_log_enabled ?id ?metric_enabled
    ?subscription_log_enabled ?timeouts ~monitor_id ~log_tag_filter
    ~metric_tag_filter __resource_id =
  let __resource_type = "azurerm_new_relic_tag_rule" in
  let __resource =
    ({
       activity_log_enabled;
       azure_active_directory_log_enabled;
       id;
       metric_enabled;
       monitor_id;
       subscription_log_enabled;
       log_tag_filter;
       metric_tag_filter;
       timeouts;
     }
      : azurerm_new_relic_tag_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_new_relic_tag_rule __resource);
  let __resource_attributes =
    ({
       activity_log_enabled =
         Prop.computed __resource_type __resource_id
           "activity_log_enabled";
       azure_active_directory_log_enabled =
         Prop.computed __resource_type __resource_id
           "azure_active_directory_log_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       metric_enabled =
         Prop.computed __resource_type __resource_id "metric_enabled";
       monitor_id =
         Prop.computed __resource_type __resource_id "monitor_id";
       subscription_log_enabled =
         Prop.computed __resource_type __resource_id
           "subscription_log_enabled";
     }
      : t)
  in
  __resource_attributes
