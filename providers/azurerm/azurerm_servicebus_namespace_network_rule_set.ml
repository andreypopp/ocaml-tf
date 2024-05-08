(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_rules = {
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rules) -> ()

let yojson_of_network_rules =
  (function
   | {
       ignore_missing_vnet_service_endpoint =
         v_ignore_missing_vnet_service_endpoint;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_ignore_missing_vnet_service_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_missing_vnet_service_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rules

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_servicebus_namespace_network_rule_set = {
  default_action : string prop option; [@option]
  id : string prop option; [@option]
  ip_rules : string prop list option; [@option]
  namespace_id : string prop;
  public_network_access_enabled : bool prop option; [@option]
  trusted_services_allowed : bool prop option; [@option]
  network_rules : network_rules list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_namespace_network_rule_set) -> ()

let yojson_of_azurerm_servicebus_namespace_network_rule_set =
  (function
   | {
       default_action = v_default_action;
       id = v_id;
       ip_rules = v_ip_rules;
       namespace_id = v_namespace_id;
       public_network_access_enabled =
         v_public_network_access_enabled;
       trusted_services_allowed = v_trusted_services_allowed;
       network_rules = v_network_rules;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_network_rules then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_rules) v_network_rules
           in
           let bnd = "network_rules", arg in
           bnd :: bnds
       in
       let bnds =
         match v_trusted_services_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "trusted_services_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace_id in
         ("namespace_id", arg) :: bnds
       in
       let bnds =
         match v_ip_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_rules", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_servicebus_namespace_network_rule_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_namespace_network_rule_set

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
