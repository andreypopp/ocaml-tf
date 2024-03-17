(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_log_profile__retention_policy = {
  days : float option; [@option]  (** days *)
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_monitor_log_profile__retention_policy *)

type azurerm_monitor_log_profile__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_log_profile__timeouts *)

type azurerm_monitor_log_profile = {
  categories : string list;  (** categories *)
  locations : string list;  (** locations *)
  name : string;  (** name *)
  servicebus_rule_id : string option; [@option]
      (** servicebus_rule_id *)
  storage_account_id : string option; [@option]
      (** storage_account_id *)
  retention_policy :
    azurerm_monitor_log_profile__retention_policy list;
  timeouts : azurerm_monitor_log_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_log_profile *)

let azurerm_monitor_log_profile ?servicebus_rule_id
    ?storage_account_id ?timeouts ~categories ~locations ~name
    ~retention_policy __resource_id =
  let __resource_type = "azurerm_monitor_log_profile" in
  let __resource =
    {
      categories;
      locations;
      name;
      servicebus_rule_id;
      storage_account_id;
      retention_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_log_profile __resource);
  ()
