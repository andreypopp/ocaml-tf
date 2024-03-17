(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_datadog_monitor_tag_rule__log__filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__log__filter *)

type azurerm_datadog_monitor_tag_rule__log = {
  aad_log_enabled : bool prop option; [@option]
      (** aad_log_enabled *)
  resource_log_enabled : bool prop option; [@option]
      (** resource_log_enabled *)
  subscription_log_enabled : bool prop option; [@option]
      (** subscription_log_enabled *)
  filter : azurerm_datadog_monitor_tag_rule__log__filter list;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__log *)

type azurerm_datadog_monitor_tag_rule__metric__filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__metric__filter *)

type azurerm_datadog_monitor_tag_rule__metric = {
  filter : azurerm_datadog_monitor_tag_rule__metric__filter list;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__metric *)

type azurerm_datadog_monitor_tag_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__timeouts *)

type azurerm_datadog_monitor_tag_rule = {
  datadog_monitor_id : string prop;  (** datadog_monitor_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  log : azurerm_datadog_monitor_tag_rule__log list;
  metric : azurerm_datadog_monitor_tag_rule__metric list;
  timeouts : azurerm_datadog_monitor_tag_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule *)

type t = {
  datadog_monitor_id : string prop;
  id : string prop;
  name : string prop;
}

let azurerm_datadog_monitor_tag_rule ?id ?name ?timeouts
    ~datadog_monitor_id ~log ~metric __resource_id =
  let __resource_type = "azurerm_datadog_monitor_tag_rule" in
  let __resource =
    ({ datadog_monitor_id; id; name; log; metric; timeouts }
      : azurerm_datadog_monitor_tag_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_datadog_monitor_tag_rule __resource);
  let __resource_attributes =
    ({
       datadog_monitor_id =
         Prop.computed __resource_type __resource_id
           "datadog_monitor_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
