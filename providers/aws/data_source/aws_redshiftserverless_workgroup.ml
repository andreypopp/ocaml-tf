(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint__vpc_endpoint__network_interface = {
  availability_zone : string prop;
  network_interface_id : string prop;
  private_ip_address : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__vpc_endpoint__network_interface) -> ()

let yojson_of_endpoint__vpc_endpoint__network_interface =
  (function
   | {
       availability_zone = v_availability_zone;
       network_interface_id = v_network_interface_id;
       private_ip_address = v_private_ip_address;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : endpoint__vpc_endpoint__network_interface ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__vpc_endpoint__network_interface

[@@@deriving.end]

type endpoint__vpc_endpoint = {
  network_interface : endpoint__vpc_endpoint__network_interface list;
  vpc_endpoint_id : string prop;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__vpc_endpoint) -> ()

let yojson_of_endpoint__vpc_endpoint =
  (function
   | {
       network_interface = v_network_interface;
       vpc_endpoint_id = v_vpc_endpoint_id;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_id
         in
         ("vpc_endpoint_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_endpoint__vpc_endpoint__network_interface
             v_network_interface
         in
         ("network_interface", arg) :: bnds
       in
       `Assoc bnds
    : endpoint__vpc_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__vpc_endpoint

[@@@deriving.end]

type endpoint = {
  address : string prop;
  port : float prop;
  vpc_endpoint : endpoint__vpc_endpoint list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint) -> ()

let yojson_of_endpoint =
  (function
   | {
       address = v_address;
       port = v_port;
       vpc_endpoint = v_vpc_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_endpoint__vpc_endpoint
             v_vpc_endpoint
         in
         ("vpc_endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint

[@@@deriving.end]

type aws_redshiftserverless_workgroup = {
  id : string prop option; [@option]
  workgroup_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftserverless_workgroup) -> ()

let yojson_of_aws_redshiftserverless_workgroup =
  (function
   | { id = v_id; workgroup_name = v_workgroup_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workgroup_name
         in
         ("workgroup_name", arg) :: bnds
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
    : aws_redshiftserverless_workgroup ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_workgroup

[@@@deriving.end]

let aws_redshiftserverless_workgroup ?id ~workgroup_name () :
    aws_redshiftserverless_workgroup =
  { id; workgroup_name }

type t = {
  arn : string prop;
  endpoint : endpoint list prop;
  enhanced_vpc_routing : bool prop;
  id : string prop;
  namespace_name : string prop;
  publicly_accessible : bool prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  workgroup_id : string prop;
  workgroup_name : string prop;
}

let make ?id ~workgroup_name __id =
  let __type = "aws_redshiftserverless_workgroup" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       endpoint = Prop.computed __type __id "endpoint";
       enhanced_vpc_routing =
         Prop.computed __type __id "enhanced_vpc_routing";
       id = Prop.computed __type __id "id";
       namespace_name = Prop.computed __type __id "namespace_name";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       workgroup_id = Prop.computed __type __id "workgroup_id";
       workgroup_name = Prop.computed __type __id "workgroup_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_workgroup
        (aws_redshiftserverless_workgroup ?id ~workgroup_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~workgroup_name __id =
  let (r : _ Tf_core.resource) = make ?id ~workgroup_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
