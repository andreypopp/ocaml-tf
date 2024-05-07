(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_dns_servers = {
  ip_address : string prop;
  port : float prop option; [@option]
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : target_dns_servers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_dns_servers

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

type azurerm_private_dns_resolver_forwarding_rule = {
  dns_forwarding_ruleset_id : string prop;
  domain_name : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  name : string prop;
  target_dns_servers : target_dns_servers list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_private_dns_resolver_forwarding_rule) -> ()

let yojson_of_azurerm_private_dns_resolver_forwarding_rule =
  (function
   | {
       dns_forwarding_ruleset_id = v_dns_forwarding_ruleset_id;
       domain_name = v_domain_name;
       enabled = v_enabled;
       id = v_id;
       metadata = v_metadata;
       name = v_name;
       target_dns_servers = v_target_dns_servers;
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
           yojson_of_list yojson_of_target_dns_servers
             v_target_dns_servers
         in
         ("target_dns_servers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "metadata", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
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

let target_dns_servers ?port ~ip_address () : target_dns_servers =
  { ip_address; port }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_resolver_forwarding_rule ?enabled ?id
    ?metadata ?timeouts ~dns_forwarding_ruleset_id ~domain_name ~name
    ~target_dns_servers () :
    azurerm_private_dns_resolver_forwarding_rule =
  {
    dns_forwarding_ruleset_id;
    domain_name;
    enabled;
    id;
    metadata;
    name;
    target_dns_servers;
    timeouts;
  }

type t = {
  tf_name : string;
  dns_forwarding_ruleset_id : string prop;
  domain_name : string prop;
  enabled : bool prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
}

let make ?enabled ?id ?metadata ?timeouts ~dns_forwarding_ruleset_id
    ~domain_name ~name ~target_dns_servers __id =
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_dns_resolver_forwarding_rule
        (azurerm_private_dns_resolver_forwarding_rule ?enabled ?id
           ?metadata ?timeouts ~dns_forwarding_ruleset_id
           ~domain_name ~name ~target_dns_servers ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?metadata ?timeouts
    ~dns_forwarding_ruleset_id ~domain_name ~name ~target_dns_servers
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?metadata ?timeouts ~dns_forwarding_ruleset_id
      ~domain_name ~name ~target_dns_servers __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
