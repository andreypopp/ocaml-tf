(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_prefix_list_reference = {
  blackhole : bool prop option; [@option]
  id : string prop option; [@option]
  prefix_list_id : string prop;
  transit_gateway_attachment_id : string prop option; [@option]
  transit_gateway_route_table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_prefix_list_reference) -> ()

let yojson_of_aws_ec2_transit_gateway_prefix_list_reference =
  (function
   | {
       blackhole = v_blackhole;
       id = v_id;
       prefix_list_id = v_prefix_list_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_prefix_list_id
         in
         ("prefix_list_id", arg) :: bnds
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
         match v_blackhole with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "blackhole", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_prefix_list_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_prefix_list_reference

[@@@deriving.end]

let aws_ec2_transit_gateway_prefix_list_reference ?blackhole ?id
    ?transit_gateway_attachment_id ~prefix_list_id
    ~transit_gateway_route_table_id () :
    aws_ec2_transit_gateway_prefix_list_reference =
  {
    blackhole;
    id;
    prefix_list_id;
    transit_gateway_attachment_id;
    transit_gateway_route_table_id;
  }

type t = {
  blackhole : bool prop;
  id : string prop;
  prefix_list_id : string prop;
  prefix_list_owner_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

let make ?blackhole ?id ?transit_gateway_attachment_id
    ~prefix_list_id ~transit_gateway_route_table_id __id =
  let __type = "aws_ec2_transit_gateway_prefix_list_reference" in
  let __attrs =
    ({
       blackhole = Prop.computed __type __id "blackhole";
       id = Prop.computed __type __id "id";
       prefix_list_id = Prop.computed __type __id "prefix_list_id";
       prefix_list_owner_id =
         Prop.computed __type __id "prefix_list_owner_id";
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
      yojson_of_aws_ec2_transit_gateway_prefix_list_reference
        (aws_ec2_transit_gateway_prefix_list_reference ?blackhole ?id
           ?transit_gateway_attachment_id ~prefix_list_id
           ~transit_gateway_route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?blackhole ?id ?transit_gateway_attachment_id
    ~prefix_list_id ~transit_gateway_route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?blackhole ?id ?transit_gateway_attachment_id
      ~prefix_list_id ~transit_gateway_route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
