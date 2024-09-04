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

type aws_ec2_transit_gateway_connect_peer = {
  bgp_asn : string prop option; [@option]
  id : string prop option; [@option]
  inside_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  peer_address : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  transit_gateway_address : string prop option; [@option]
  transit_gateway_attachment_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_connect_peer) -> ()

let yojson_of_aws_ec2_transit_gateway_connect_peer =
  (function
   | {
       bgp_asn = v_bgp_asn;
       id = v_id;
       inside_cidr_blocks = v_inside_cidr_blocks;
       peer_address = v_peer_address;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_gateway_address = v_transit_gateway_address;
       transit_gateway_attachment_id =
         v_transit_gateway_attachment_id;
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
             v_transit_gateway_attachment_id
         in
         ("transit_gateway_attachment_id", arg) :: bnds
       in
       let bnds =
         match v_transit_gateway_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_gateway_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
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
         let arg = yojson_of_prop yojson_of_string v_peer_address in
         ("peer_address", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_inside_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_inside_cidr_blocks
           in
           let bnd = "inside_cidr_blocks", arg in
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
         match v_bgp_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bgp_asn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_connect_peer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_connect_peer

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_transit_gateway_connect_peer ?bgp_asn ?id ?tags ?tags_all
    ?transit_gateway_address ?timeouts ~inside_cidr_blocks
    ~peer_address ~transit_gateway_attachment_id () :
    aws_ec2_transit_gateway_connect_peer =
  {
    bgp_asn;
    id;
    inside_cidr_blocks;
    peer_address;
    tags;
    tags_all;
    transit_gateway_address;
    transit_gateway_attachment_id;
    timeouts;
  }

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
  tags_all : string Tf_core.assoc prop;
  transit_gateway_address : string prop;
  transit_gateway_attachment_id : string prop;
}

let make ?bgp_asn ?id ?tags ?tags_all ?transit_gateway_address
    ?timeouts ~inside_cidr_blocks ~peer_address
    ~transit_gateway_attachment_id __id =
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
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_address =
         Prop.computed __type __id "transit_gateway_address";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_connect_peer
        (aws_ec2_transit_gateway_connect_peer ?bgp_asn ?id ?tags
           ?tags_all ?transit_gateway_address ?timeouts
           ~inside_cidr_blocks ~peer_address
           ~transit_gateway_attachment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?bgp_asn ?id ?tags ?tags_all
    ?transit_gateway_address ?timeouts ~inside_cidr_blocks
    ~peer_address ~transit_gateway_attachment_id __id =
  let (r : _ Tf_core.resource) =
    make ?bgp_asn ?id ?tags ?tags_all ?transit_gateway_address
      ?timeouts ~inside_cidr_blocks ~peer_address
      ~transit_gateway_attachment_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
