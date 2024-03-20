(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_rules = {
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** network_rules *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_servicebus_namespace_network_rule_set = {
  default_action : string prop option; [@option]
      (** default_action *)
  id : string prop option; [@option]  (** id *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  namespace_id : string prop;  (** namespace_id *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  trusted_services_allowed : bool prop option; [@option]
      (** trusted_services_allowed *)
  network_rules : network_rules list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_network_rule_set *)

let network_rules ?ignore_missing_vnet_service_endpoint ~subnet_id ()
    : network_rules =
  { ignore_missing_vnet_service_endpoint; subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_namespace_network_rule_set ?default_action ?id
    ?ip_rules ?public_network_access_enabled
    ?trusted_services_allowed ?timeouts ~namespace_id ~network_rules
    () : azurerm_servicebus_namespace_network_rule_set =
  {
    default_action;
    id;
    ip_rules;
    namespace_id;
    public_network_access_enabled;
    trusted_services_allowed;
    network_rules;
    timeouts;
  }

type t = {
  default_action : string prop;
  id : string prop;
  ip_rules : string list prop;
  namespace_id : string prop;
  public_network_access_enabled : bool prop;
  trusted_services_allowed : bool prop;
}

let make ?default_action ?id ?ip_rules ?public_network_access_enabled
    ?trusted_services_allowed ?timeouts ~namespace_id ~network_rules
    __id =
  let __type = "azurerm_servicebus_namespace_network_rule_set" in
  let __attrs =
    ({
       default_action = Prop.computed __type __id "default_action";
       id = Prop.computed __type __id "id";
       ip_rules = Prop.computed __type __id "ip_rules";
       namespace_id = Prop.computed __type __id "namespace_id";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       trusted_services_allowed =
         Prop.computed __type __id "trusted_services_allowed";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_namespace_network_rule_set
        (azurerm_servicebus_namespace_network_rule_set
           ?default_action ?id ?ip_rules
           ?public_network_access_enabled ?trusted_services_allowed
           ?timeouts ~namespace_id ~network_rules ());
    attrs = __attrs;
  }

let register ?tf_module ?default_action ?id ?ip_rules
    ?public_network_access_enabled ?trusted_services_allowed
    ?timeouts ~namespace_id ~network_rules __id =
  let (r : _ Tf_core.resource) =
    make ?default_action ?id ?ip_rules ?public_network_access_enabled
      ?trusted_services_allowed ?timeouts ~namespace_id
      ~network_rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
