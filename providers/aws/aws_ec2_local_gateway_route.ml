(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_local_gateway_route = {
  destination_cidr_block : string prop;
  id : string prop option; [@option]
  local_gateway_route_table_id : string prop;
  local_gateway_virtual_interface_group_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_local_gateway_route) -> ()

let yojson_of_aws_ec2_local_gateway_route =
  (function
   | {
       destination_cidr_block = v_destination_cidr_block;
       id = v_id;
       local_gateway_route_table_id = v_local_gateway_route_table_id;
       local_gateway_virtual_interface_group_id =
         v_local_gateway_virtual_interface_group_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_local_gateway_virtual_interface_group_id
         in
         ("local_gateway_virtual_interface_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_local_gateway_route_table_id
         in
         ("local_gateway_route_table_id", arg) :: bnds
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
       `Assoc bnds
    : aws_ec2_local_gateway_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_local_gateway_route

[@@@deriving.end]

let aws_ec2_local_gateway_route ?id ~destination_cidr_block
    ~local_gateway_route_table_id
    ~local_gateway_virtual_interface_group_id () :
    aws_ec2_local_gateway_route =
  {
    destination_cidr_block;
    id;
    local_gateway_route_table_id;
    local_gateway_virtual_interface_group_id;
  }

type t = {
  destination_cidr_block : string prop;
  id : string prop;
  local_gateway_route_table_id : string prop;
  local_gateway_virtual_interface_group_id : string prop;
}

let make ?id ~destination_cidr_block ~local_gateway_route_table_id
    ~local_gateway_virtual_interface_group_id __id =
  let __type = "aws_ec2_local_gateway_route" in
  let __attrs =
    ({
       destination_cidr_block =
         Prop.computed __type __id "destination_cidr_block";
       id = Prop.computed __type __id "id";
       local_gateway_route_table_id =
         Prop.computed __type __id "local_gateway_route_table_id";
       local_gateway_virtual_interface_group_id =
         Prop.computed __type __id
           "local_gateway_virtual_interface_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_local_gateway_route
        (aws_ec2_local_gateway_route ?id ~destination_cidr_block
           ~local_gateway_route_table_id
           ~local_gateway_virtual_interface_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~destination_cidr_block
    ~local_gateway_route_table_id
    ~local_gateway_virtual_interface_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~destination_cidr_block ~local_gateway_route_table_id
      ~local_gateway_virtual_interface_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
