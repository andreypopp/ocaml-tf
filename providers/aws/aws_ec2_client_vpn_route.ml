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

type aws_ec2_client_vpn_route = {
  client_vpn_endpoint_id : string prop;
  description : string prop option; [@option]
  destination_cidr_block : string prop;
  id : string prop option; [@option]
  target_vpc_subnet_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_client_vpn_route) -> ()

let yojson_of_aws_ec2_client_vpn_route =
  (function
   | {
       client_vpn_endpoint_id = v_client_vpn_endpoint_id;
       description = v_description;
       destination_cidr_block = v_destination_cidr_block;
       id = v_id;
       target_vpc_subnet_id = v_target_vpc_subnet_id;
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
           yojson_of_prop yojson_of_string v_target_vpc_subnet_id
         in
         ("target_vpc_subnet_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_vpn_endpoint_id
         in
         ("client_vpn_endpoint_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_client_vpn_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_client_vpn_route

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_client_vpn_route ?description ?id ?timeouts
    ~client_vpn_endpoint_id ~destination_cidr_block
    ~target_vpc_subnet_id () : aws_ec2_client_vpn_route =
  {
    client_vpn_endpoint_id;
    description;
    destination_cidr_block;
    id;
    target_vpc_subnet_id;
    timeouts;
  }

type t = {
  tf_name : string;
  client_vpn_endpoint_id : string prop;
  description : string prop;
  destination_cidr_block : string prop;
  id : string prop;
  origin : string prop;
  target_vpc_subnet_id : string prop;
  type_ : string prop;
}

let make ?description ?id ?timeouts ~client_vpn_endpoint_id
    ~destination_cidr_block ~target_vpc_subnet_id __id =
  let __type = "aws_ec2_client_vpn_route" in
  let __attrs =
    ({
       tf_name = __id;
       client_vpn_endpoint_id =
         Prop.computed __type __id "client_vpn_endpoint_id";
       description = Prop.computed __type __id "description";
       destination_cidr_block =
         Prop.computed __type __id "destination_cidr_block";
       id = Prop.computed __type __id "id";
       origin = Prop.computed __type __id "origin";
       target_vpc_subnet_id =
         Prop.computed __type __id "target_vpc_subnet_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_client_vpn_route
        (aws_ec2_client_vpn_route ?description ?id ?timeouts
           ~client_vpn_endpoint_id ~destination_cidr_block
           ~target_vpc_subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~client_vpn_endpoint_id ~destination_cidr_block
    ~target_vpc_subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~client_vpn_endpoint_id
      ~destination_cidr_block ~target_vpc_subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
