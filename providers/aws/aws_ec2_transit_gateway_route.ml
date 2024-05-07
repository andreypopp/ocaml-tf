(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_route = {
  blackhole : bool prop option; [@option]
  destination_cidr_block : string prop;
  id : string prop option; [@option]
  transit_gateway_attachment_id : string prop option; [@option]
  transit_gateway_route_table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_route) -> ()

let yojson_of_aws_ec2_transit_gateway_route =
  (function
   | {
       blackhole = v_blackhole;
       destination_cidr_block = v_destination_cidr_block;
       id = v_id;
       transit_gateway_attachment_id =
         v_transit_gateway_attachment_id;
       transit_gateway_route_table_id =
         v_transit_gateway_route_table_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_transit_gateway_route_table_id
         in
         ("transit_gateway_route_table_id", arg) :: bnds
       in
       let bnds =
         match v_transit_gateway_attachment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_gateway_attachment_id", arg in
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
           yojson_of_prop yojson_of_string v_destination_cidr_block
         in
         ("destination_cidr_block", arg) :: bnds
       in
       let bnds =
         match v_blackhole with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "blackhole", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_route

[@@@deriving.end]

let aws_ec2_transit_gateway_route ?blackhole ?id
    ?transit_gateway_attachment_id ~destination_cidr_block
    ~transit_gateway_route_table_id () :
    aws_ec2_transit_gateway_route =
  {
    blackhole;
    destination_cidr_block;
    id;
    transit_gateway_attachment_id;
    transit_gateway_route_table_id;
  }

type t = {
  tf_name : string;
  blackhole : bool prop;
  destination_cidr_block : string prop;
  id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

let make ?blackhole ?id ?transit_gateway_attachment_id
    ~destination_cidr_block ~transit_gateway_route_table_id __id =
  let __type = "aws_ec2_transit_gateway_route" in
  let __attrs =
    ({
       tf_name = __id;
       blackhole = Prop.computed __type __id "blackhole";
       destination_cidr_block =
         Prop.computed __type __id "destination_cidr_block";
       id = Prop.computed __type __id "id";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
       transit_gateway_route_table_id =
         Prop.computed __type __id "transit_gateway_route_table_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_route
        (aws_ec2_transit_gateway_route ?blackhole ?id
           ?transit_gateway_attachment_id ~destination_cidr_block
           ~transit_gateway_route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?blackhole ?id ?transit_gateway_attachment_id
    ~destination_cidr_block ~transit_gateway_route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?blackhole ?id ?transit_gateway_attachment_id
      ~destination_cidr_block ~transit_gateway_route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
