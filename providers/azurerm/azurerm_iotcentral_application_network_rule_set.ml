(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_rule = {
  ip_mask : string prop;  (** ip_mask *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** ip_rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iotcentral_application_network_rule_set = {
  apply_to_device : bool prop option; [@option]
      (** apply_to_device *)
  default_action : string prop option; [@option]
      (** default_action *)
  id : string prop option; [@option]  (** id *)
  iotcentral_application_id : string prop;
      (** iotcentral_application_id *)
  ip_rule : ip_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application_network_rule_set *)

let ip_rule ~ip_mask ~name () : ip_rule = { ip_mask; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iotcentral_application_network_rule_set ?apply_to_device
    ?default_action ?id ?timeouts ~iotcentral_application_id ~ip_rule
    () : azurerm_iotcentral_application_network_rule_set =
  {
    apply_to_device;
    default_action;
    id;
    iotcentral_application_id;
    ip_rule;
    timeouts;
  }

type t = {
  apply_to_device : bool prop;
  default_action : string prop;
  id : string prop;
  iotcentral_application_id : string prop;
}

let make ?apply_to_device ?default_action ?id ?timeouts
    ~iotcentral_application_id ~ip_rule __id =
  let __type = "azurerm_iotcentral_application_network_rule_set" in
  let __attrs =
    ({
       apply_to_device = Prop.computed __type __id "apply_to_device";
       default_action = Prop.computed __type __id "default_action";
       id = Prop.computed __type __id "id";
       iotcentral_application_id =
         Prop.computed __type __id "iotcentral_application_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iotcentral_application_network_rule_set
        (azurerm_iotcentral_application_network_rule_set
           ?apply_to_device ?default_action ?id ?timeouts
           ~iotcentral_application_id ~ip_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_to_device ?default_action ?id
    ?timeouts ~iotcentral_application_id ~ip_rule __id =
  let (r : _ Tf_core.resource) =
    make ?apply_to_device ?default_action ?id ?timeouts
      ~iotcentral_application_id ~ip_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
