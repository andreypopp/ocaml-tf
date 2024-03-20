(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?servicebus_rule_id ?storage_account_id ?timeouts
    ~categories ~locations ~name ~retention_policy __id =
  let __type = "azurerm_monitor_log_profile" in
  let __attrs =
    ({
       categories = Prop.computed __type __id "categories";
       id = Prop.computed __type __id "id";
       locations = Prop.computed __type __id "locations";
       name = Prop.computed __type __id "name";
       servicebus_rule_id =
         Prop.computed __type __id "servicebus_rule_id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_log_profile
        (azurerm_monitor_log_profile ?id ?servicebus_rule_id
           ?storage_account_id ?timeouts ~categories ~locations ~name
           ~retention_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?servicebus_rule_id ?storage_account_id
    ?timeouts ~categories ~locations ~name ~retention_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?servicebus_rule_id ?storage_account_id ?timeouts
      ~categories ~locations ~name ~retention_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
