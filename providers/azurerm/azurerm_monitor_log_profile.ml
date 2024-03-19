(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type retention_policy = {
  days : float prop option; [@option]  (** days *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** retention_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_log_profile = {
  categories : string prop list;  (** categories *)
  id : string prop option; [@option]  (** id *)
  locations : string prop list;  (** locations *)
  name : string prop;  (** name *)
  servicebus_rule_id : string prop option; [@option]
      (** servicebus_rule_id *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  retention_policy : retention_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_log_profile *)

let retention_policy ?days ~enabled () : retention_policy =
  { days; enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_log_profile ?id ?servicebus_rule_id
    ?storage_account_id ?timeouts ~categories ~locations ~name
    ~retention_policy () : azurerm_monitor_log_profile =
  {
    categories;
    id;
    locations;
    name;
    servicebus_rule_id;
    storage_account_id;
    retention_policy;
    timeouts;
  }

type t = {
  categories : string list prop;
  id : string prop;
  locations : string list prop;
  name : string prop;
  servicebus_rule_id : string prop;
  storage_account_id : string prop;
}

let register ?tf_module ?id ?servicebus_rule_id ?storage_account_id
    ?timeouts ~categories ~locations ~name ~retention_policy
    __resource_id =
  let __resource_type = "azurerm_monitor_log_profile" in
  let __resource =
    azurerm_monitor_log_profile ?id ?servicebus_rule_id
      ?storage_account_id ?timeouts ~categories ~locations ~name
      ~retention_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_log_profile __resource);
  let __resource_attributes =
    ({
       categories =
         Prop.computed __resource_type __resource_id "categories";
       id = Prop.computed __resource_type __resource_id "id";
       locations =
         Prop.computed __resource_type __resource_id "locations";
       name = Prop.computed __resource_type __resource_id "name";
       servicebus_rule_id =
         Prop.computed __resource_type __resource_id
           "servicebus_rule_id";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
     }
      : t)
  in
  __resource_attributes
