(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_vpn_gateway_route_propagation = {
  id : string prop option; [@option]
  route_table_id : string prop;
  vpn_gateway_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpn_gateway_route_propagation) -> ()

let yojson_of_aws_vpn_gateway_route_propagation =
  (function
   | {
       id = v_id;
       route_table_id = v_route_table_id;
       vpn_gateway_id = v_vpn_gateway_id;
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
           yojson_of_prop yojson_of_string v_vpn_gateway_id
         in
         ("vpn_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_route_table_id
         in
         ("route_table_id", arg) :: bnds
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
    : aws_vpn_gateway_route_propagation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpn_gateway_route_propagation

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpn_gateway_route_propagation ?id ?timeouts ~route_table_id
    ~vpn_gateway_id () : aws_vpn_gateway_route_propagation =
  { id; route_table_id; vpn_gateway_id; timeouts }

type t = {
  id : string prop;
  route_table_id : string prop;
  vpn_gateway_id : string prop;
}

let make ?id ?timeouts ~route_table_id ~vpn_gateway_id __id =
  let __type = "aws_vpn_gateway_route_propagation" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       route_table_id = Prop.computed __type __id "route_table_id";
       vpn_gateway_id = Prop.computed __type __id "vpn_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpn_gateway_route_propagation
        (aws_vpn_gateway_route_propagation ?id ?timeouts
           ~route_table_id ~vpn_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~route_table_id ~vpn_gateway_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~route_table_id ~vpn_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
