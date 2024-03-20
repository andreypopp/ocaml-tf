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

type aws_networkmanager_transit_gateway_connect_peer_association = {
  device_id : string prop;
  global_network_id : string prop;
  id : string prop option; [@option]
  link_id : string prop option; [@option]
  transit_gateway_connect_peer_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       aws_networkmanager_transit_gateway_connect_peer_association) ->
  ()

let yojson_of_aws_networkmanager_transit_gateway_connect_peer_association
    =
  (function
   | {
       device_id = v_device_id;
       global_network_id = v_global_network_id;
       id = v_id;
       link_id = v_link_id;
       transit_gateway_connect_peer_arn =
         v_transit_gateway_connect_peer_arn;
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
           yojson_of_prop yojson_of_string
             v_transit_gateway_connect_peer_arn
         in
         ("transit_gateway_connect_peer_arn", arg) :: bnds
       in
       let bnds =
         match v_link_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "link_id", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_global_network_id
         in
         ("global_network_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_id in
         ("device_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_transit_gateway_connect_peer_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_networkmanager_transit_gateway_connect_peer_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_transit_gateway_connect_peer_association ?id
    ?link_id ?timeouts ~device_id ~global_network_id
    ~transit_gateway_connect_peer_arn () :
    aws_networkmanager_transit_gateway_connect_peer_association =
  {
    device_id;
    global_network_id;
    id;
    link_id;
    transit_gateway_connect_peer_arn;
    timeouts;
  }

type t = {
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  transit_gateway_connect_peer_arn : string prop;
}

let make ?id ?link_id ?timeouts ~device_id ~global_network_id
    ~transit_gateway_connect_peer_arn __id =
  let __type =
    "aws_networkmanager_transit_gateway_connect_peer_association"
  in
  let __attrs =
    ({
       device_id = Prop.computed __type __id "device_id";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       link_id = Prop.computed __type __id "link_id";
       transit_gateway_connect_peer_arn =
         Prop.computed __type __id "transit_gateway_connect_peer_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_transit_gateway_connect_peer_association
        (aws_networkmanager_transit_gateway_connect_peer_association
           ?id ?link_id ?timeouts ~device_id ~global_network_id
           ~transit_gateway_connect_peer_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?link_id ?timeouts ~device_id
    ~global_network_id ~transit_gateway_connect_peer_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?link_id ?timeouts ~device_id ~global_network_id
      ~transit_gateway_connect_peer_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
