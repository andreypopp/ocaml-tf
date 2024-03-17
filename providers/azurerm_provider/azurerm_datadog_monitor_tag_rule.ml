(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_datadog_monitor_tag_rule__log__filter = {
  action : string;  (** action *)
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__log__filter *)

type azurerm_datadog_monitor_tag_rule__log = {
  aad_log_enabled : bool option; [@option]  (** aad_log_enabled *)
  resource_log_enabled : bool option; [@option]
      (** resource_log_enabled *)
  subscription_log_enabled : bool option; [@option]
      (** subscription_log_enabled *)
  filter : azurerm_datadog_monitor_tag_rule__log__filter list;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__log *)

type azurerm_datadog_monitor_tag_rule__metric__filter = {
  action : string;  (** action *)
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__metric__filter *)

type azurerm_datadog_monitor_tag_rule__metric = {
  filter : azurerm_datadog_monitor_tag_rule__metric__filter list;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__metric *)

type azurerm_datadog_monitor_tag_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule__timeouts *)

type azurerm_datadog_monitor_tag_rule = {
  datadog_monitor_id : string;  (** datadog_monitor_id *)
  name : string option; [@option]  (** name *)
  log : azurerm_datadog_monitor_tag_rule__log list;
  metric : azurerm_datadog_monitor_tag_rule__metric list;
  timeouts : azurerm_datadog_monitor_tag_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_tag_rule *)

let azurerm_datadog_monitor_tag_rule ?name ?timeouts
    ~datadog_monitor_id ~log ~metric __resource_id =
  let __resource_type = "azurerm_datadog_monitor_tag_rule" in
  let __resource =
    { datadog_monitor_id; name; log; metric; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_datadog_monitor_tag_rule __resource);
  ()
