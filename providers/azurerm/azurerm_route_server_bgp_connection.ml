(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_route_server_bgp_connection = {
  id : string prop option; [@option]
  name : string prop;
  peer_asn : float prop;
  peer_ip : string prop;
  route_server_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_route_server_bgp_connection) -> ()

let yojson_of_azurerm_route_server_bgp_connection =
  (function
   | {
       id = v_id;
       name = v_name;
       peer_asn = v_peer_asn;
       peer_ip = v_peer_ip;
       route_server_id = v_route_server_id;
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
           yojson_of_prop yojson_of_string v_route_server_id
         in
         ("route_server_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peer_ip in
         ("peer_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_peer_asn in
         ("peer_asn", arg) :: bnds
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
    : azurerm_route_server_bgp_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_route_server_bgp_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_route_server_bgp_connection ?id ?timeouts ~name ~peer_asn
    ~peer_ip ~route_server_id () :
    azurerm_route_server_bgp_connection =
  { id; name; peer_asn; peer_ip; route_server_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  peer_asn : float prop;
  peer_ip : string prop;
  route_server_id : string prop;
}

let make ?id ?timeouts ~name ~peer_asn ~peer_ip ~route_server_id __id
    =
  let __type = "azurerm_route_server_bgp_connection" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       peer_asn = Prop.computed __type __id "peer_asn";
       peer_ip = Prop.computed __type __id "peer_ip";
       route_server_id = Prop.computed __type __id "route_server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route_server_bgp_connection
        (azurerm_route_server_bgp_connection ?id ?timeouts ~name
           ~peer_asn ~peer_ip ~route_server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~peer_asn ~peer_ip
    ~route_server_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~peer_asn ~peer_ip ~route_server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
