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

type target_dns_servers = {
  ip_address : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_dns_servers) -> ()

let yojson_of_target_dns_servers =
  (function
   | { ip_address = v_ip_address; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : target_dns_servers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_dns_servers

[@@@deriving.end]

type azurerm_private_dns_resolver_forwarding_rule = {
  dns_forwarding_ruleset_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_private_dns_resolver_forwarding_rule) -> ()

let yojson_of_azurerm_private_dns_resolver_forwarding_rule =
  (function
   | {
       dns_forwarding_ruleset_id = v_dns_forwarding_ruleset_id;
       id = v_id;
       name = v_name;
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_dns_forwarding_ruleset_id
         in
         ("dns_forwarding_ruleset_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_private_dns_resolver_forwarding_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_private_dns_resolver_forwarding_rule

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_private_dns_resolver_forwarding_rule ?id ?timeouts
    ~dns_forwarding_ruleset_id ~name () :
    azurerm_private_dns_resolver_forwarding_rule =
  { dns_forwarding_ruleset_id; id; name; timeouts }

type t = {
  tf_name : string;
  dns_forwarding_ruleset_id : string prop;
  domain_name : string prop;
  enabled : bool prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  target_dns_servers : target_dns_servers list prop;
}

let make ?id ?timeouts ~dns_forwarding_ruleset_id ~name __id =
  let __type = "azurerm_private_dns_resolver_forwarding_rule" in
  let __attrs =
    ({
       tf_name = __id;
       dns_forwarding_ruleset_id =
         Prop.computed __type __id "dns_forwarding_ruleset_id";
       domain_name = Prop.computed __type __id "domain_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       target_dns_servers =
         Prop.computed __type __id "target_dns_servers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_dns_resolver_forwarding_rule
        (azurerm_private_dns_resolver_forwarding_rule ?id ?timeouts
           ~dns_forwarding_ruleset_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~dns_forwarding_ruleset_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~dns_forwarding_ruleset_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
