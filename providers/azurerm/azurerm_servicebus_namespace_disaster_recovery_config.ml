(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_servicebus_namespace_disaster_recovery_config = {
  alias_authorization_rule_id : string prop option; [@option]
      (** alias_authorization_rule_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partner_namespace_id : string prop;  (** partner_namespace_id *)
  primary_namespace_id : string prop;  (** primary_namespace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_disaster_recovery_config *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_namespace_disaster_recovery_config
    ?alias_authorization_rule_id ?id ?timeouts ~name
    ~partner_namespace_id ~primary_namespace_id () :
    azurerm_servicebus_namespace_disaster_recovery_config =
  {
    alias_authorization_rule_id;
    id;
    name;
    partner_namespace_id;
    primary_namespace_id;
    timeouts;
  }

type t = {
  alias_authorization_rule_id : string prop;
  default_primary_key : string prop;
  default_secondary_key : string prop;
  id : string prop;
  name : string prop;
  partner_namespace_id : string prop;
  primary_connection_string_alias : string prop;
  primary_namespace_id : string prop;
  secondary_connection_string_alias : string prop;
}

let make ?alias_authorization_rule_id ?id ?timeouts ~name
    ~partner_namespace_id ~primary_namespace_id __id =
  let __type =
    "azurerm_servicebus_namespace_disaster_recovery_config"
  in
  let __attrs =
    ({
       alias_authorization_rule_id =
         Prop.computed __type __id "alias_authorization_rule_id";
       default_primary_key =
         Prop.computed __type __id "default_primary_key";
       default_secondary_key =
         Prop.computed __type __id "default_secondary_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partner_namespace_id =
         Prop.computed __type __id "partner_namespace_id";
       primary_connection_string_alias =
         Prop.computed __type __id "primary_connection_string_alias";
       primary_namespace_id =
         Prop.computed __type __id "primary_namespace_id";
       secondary_connection_string_alias =
         Prop.computed __type __id
           "secondary_connection_string_alias";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_namespace_disaster_recovery_config
        (azurerm_servicebus_namespace_disaster_recovery_config
           ?alias_authorization_rule_id ?id ?timeouts ~name
           ~partner_namespace_id ~primary_namespace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_authorization_rule_id ?id ?timeouts
    ~name ~partner_namespace_id ~primary_namespace_id __id =
  let (r : _ Tf_core.resource) =
    make ?alias_authorization_rule_id ?id ?timeouts ~name
      ~partner_namespace_id ~primary_namespace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
