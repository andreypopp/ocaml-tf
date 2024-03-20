(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type dns = {
  network_rule_fqdn_enabled : bool prop;
  proxy_enabled : bool prop;
  servers : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns) -> ()

let yojson_of_dns =
  (function
   | {
       network_rule_fqdn_enabled = v_network_rule_fqdn_enabled;
       proxy_enabled = v_proxy_enabled;
       servers = v_servers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_servers
         in
         ("servers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_proxy_enabled in
         ("proxy_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_network_rule_fqdn_enabled
         in
         ("network_rule_fqdn_enabled", arg) :: bnds
       in
       `Assoc bnds
    : dns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns

[@@@deriving.end]

type threat_intelligence_allowlist = {
  fqdns : string prop list;
  ip_addresses : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threat_intelligence_allowlist) -> ()

let yojson_of_threat_intelligence_allowlist =
  (function
   | { fqdns = v_fqdns; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_addresses
         in
         ("ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_fqdns
         in
         ("fqdns", arg) :: bnds
       in
       `Assoc bnds
    : threat_intelligence_allowlist ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threat_intelligence_allowlist

[@@@deriving.end]

type azurerm_firewall_policy = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_firewall_policy) -> ()

let yojson_of_azurerm_firewall_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_firewall_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_firewall_policy

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_firewall_policy ?id ?timeouts ~name ~resource_group_name
    () : azurerm_firewall_policy =
  { id; name; resource_group_name; timeouts }

type t = {
  base_policy_id : string prop;
  child_policies : string list prop;
  dns : dns list prop;
  firewalls : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  rule_collection_groups : string list prop;
  tags : (string * string) list prop;
  threat_intelligence_allowlist :
    threat_intelligence_allowlist list prop;
  threat_intelligence_mode : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_firewall_policy" in
  let __attrs =
    ({
       base_policy_id = Prop.computed __type __id "base_policy_id";
       child_policies = Prop.computed __type __id "child_policies";
       dns = Prop.computed __type __id "dns";
       firewalls = Prop.computed __type __id "firewalls";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       rule_collection_groups =
         Prop.computed __type __id "rule_collection_groups";
       tags = Prop.computed __type __id "tags";
       threat_intelligence_allowlist =
         Prop.computed __type __id "threat_intelligence_allowlist";
       threat_intelligence_mode =
         Prop.computed __type __id "threat_intelligence_mode";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_firewall_policy
        (azurerm_firewall_policy ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
