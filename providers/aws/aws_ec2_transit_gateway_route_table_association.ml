(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_route_table_association = {
  id : string prop option; [@option]
  replace_existing_association : bool prop option; [@option]
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_ec2_transit_gateway_route_table_association) -> ()

let yojson_of_aws_ec2_transit_gateway_route_table_association =
  (function
   | {
       id = v_id;
       replace_existing_association = v_replace_existing_association;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_transit_gateway_attachment_id
         in
         ("transit_gateway_attachment_id", arg) :: bnds
       in
       let bnds =
         match v_replace_existing_association with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace_existing_association", arg in
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
    : aws_ec2_transit_gateway_route_table_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_route_table_association

[@@@deriving.end]

let aws_ec2_transit_gateway_route_table_association ?id
    ?replace_existing_association ~transit_gateway_attachment_id
    ~transit_gateway_route_table_id () :
    aws_ec2_transit_gateway_route_table_association =
  {
    id;
    replace_existing_association;
    transit_gateway_attachment_id;
    transit_gateway_route_table_id;
  }

type t = {
  tf_name : string;
  id : string prop;
  replace_existing_association : bool prop;
  resource_id : string prop;
  resource_type : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

let make ?id ?replace_existing_association
    ~transit_gateway_attachment_id ~transit_gateway_route_table_id
    __id =
  let __type = "aws_ec2_transit_gateway_route_table_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       replace_existing_association =
         Prop.computed __type __id "replace_existing_association";
       resource_id = Prop.computed __type __id "resource_id";
       resource_type = Prop.computed __type __id "resource_type";
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
      yojson_of_aws_ec2_transit_gateway_route_table_association
        (aws_ec2_transit_gateway_route_table_association ?id
           ?replace_existing_association
           ~transit_gateway_attachment_id
           ~transit_gateway_route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?replace_existing_association
    ~transit_gateway_attachment_id ~transit_gateway_route_table_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?replace_existing_association
      ~transit_gateway_attachment_id ~transit_gateway_route_table_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
