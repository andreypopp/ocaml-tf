(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

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

type aws_ec2_transit_gateway_connect_peer = {
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  transit_gateway_connect_peer_id : string prop option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_connect_peer) -> ()

let yojson_of_aws_ec2_transit_gateway_connect_peer =
  (function
   | {
       id = v_id;
       tags = v_tags;
       transit_gateway_connect_peer_id =
         v_transit_gateway_connect_peer_id;
       filter = v_filter;
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
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_transit_gateway_connect_peer_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_gateway_connect_peer_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
       `Assoc bnds
    : aws_ec2_transit_gateway_connect_peer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_connect_peer

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ec2_transit_gateway_connect_peer ?id ?tags
    ?transit_gateway_connect_peer_id ?timeouts ~filter () :
    aws_ec2_transit_gateway_connect_peer =
  { id; tags; transit_gateway_connect_peer_id; filter; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  bgp_asn : string prop;
  bgp_peer_address : string prop;
  bgp_transit_gateway_addresses : string list prop;
  id : string prop;
  inside_cidr_blocks : string list prop;
  peer_address : string prop;
  tags : string Tf_core.assoc prop;
  transit_gateway_address : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_connect_peer_id : string prop;
}

let make ?id ?tags ?transit_gateway_connect_peer_id ?timeouts ~filter
    __id =
  let __type = "aws_ec2_transit_gateway_connect_peer" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       bgp_asn = Prop.computed __type __id "bgp_asn";
       bgp_peer_address =
         Prop.computed __type __id "bgp_peer_address";
       bgp_transit_gateway_addresses =
         Prop.computed __type __id "bgp_transit_gateway_addresses";
       id = Prop.computed __type __id "id";
       inside_cidr_blocks =
         Prop.computed __type __id "inside_cidr_blocks";
       peer_address = Prop.computed __type __id "peer_address";
       tags = Prop.computed __type __id "tags";
       transit_gateway_address =
         Prop.computed __type __id "transit_gateway_address";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
       transit_gateway_connect_peer_id =
         Prop.computed __type __id "transit_gateway_connect_peer_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_connect_peer
        (aws_ec2_transit_gateway_connect_peer ?id ?tags
           ?transit_gateway_connect_peer_id ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?transit_gateway_connect_peer_id
    ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?transit_gateway_connect_peer_id ?timeouts ~filter
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
