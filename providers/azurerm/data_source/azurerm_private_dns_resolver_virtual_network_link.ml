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

type azurerm_private_dns_resolver_virtual_network_link = {
  dns_forwarding_ruleset_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_private_dns_resolver_virtual_network_link) -> ()

let yojson_of_azurerm_private_dns_resolver_virtual_network_link =
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
    : azurerm_private_dns_resolver_virtual_network_link ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_private_dns_resolver_virtual_network_link

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_private_dns_resolver_virtual_network_link ?id ?timeouts
    ~dns_forwarding_ruleset_id ~name () :
    azurerm_private_dns_resolver_virtual_network_link =
  { dns_forwarding_ruleset_id; id; name; timeouts }

type t = {
  dns_forwarding_ruleset_id : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  virtual_network_id : string prop;
}

let make ?id ?timeouts ~dns_forwarding_ruleset_id ~name __id =
  let __type = "azurerm_private_dns_resolver_virtual_network_link" in
  let __attrs =
    ({
       dns_forwarding_ruleset_id =
         Prop.computed __type __id "dns_forwarding_ruleset_id";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_dns_resolver_virtual_network_link
        (azurerm_private_dns_resolver_virtual_network_link ?id
           ?timeouts ~dns_forwarding_ruleset_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~dns_forwarding_ruleset_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~dns_forwarding_ruleset_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
