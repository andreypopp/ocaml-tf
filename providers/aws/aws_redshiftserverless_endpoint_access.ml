(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vpc_endpoint__network_interface = {
  availability_zone : string prop;
  network_interface_id : string prop;
  private_ip_address : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_endpoint__network_interface) -> ()

let yojson_of_vpc_endpoint__network_interface =
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
    : vpc_endpoint__network_interface ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_endpoint__network_interface

[@@@deriving.end]

type vpc_endpoint = {
  network_interface : vpc_endpoint__network_interface list;
  vpc_endpoint_id : string prop;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_endpoint) -> ()

let yojson_of_vpc_endpoint =
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
           yojson_of_list yojson_of_vpc_endpoint__network_interface
             v_network_interface
         in
         ("network_interface", arg) :: bnds
       in
       `Assoc bnds
    : vpc_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_endpoint

[@@@deriving.end]

type aws_redshiftserverless_endpoint_access = {
  endpoint_name : string prop;
  id : string prop option; [@option]
  owner_account : string prop option; [@option]
  subnet_ids : string prop list;
  vpc_security_group_ids : string prop list option; [@option]
  workgroup_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftserverless_endpoint_access) -> ()

let yojson_of_aws_redshiftserverless_endpoint_access =
  (function
   | {
       endpoint_name = v_endpoint_name;
       id = v_id;
       owner_account = v_owner_account;
       subnet_ids = v_subnet_ids;
       vpc_security_group_ids = v_vpc_security_group_ids;
       workgroup_name = v_workgroup_name;
     } ->
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
         match v_vpc_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         match v_owner_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_account", arg in
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
         let arg = yojson_of_prop yojson_of_string v_endpoint_name in
         ("endpoint_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshiftserverless_endpoint_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_endpoint_access

[@@@deriving.end]

let aws_redshiftserverless_endpoint_access ?id ?owner_account
    ?vpc_security_group_ids ~endpoint_name ~subnet_ids
    ~workgroup_name () : aws_redshiftserverless_endpoint_access =
  {
    endpoint_name;
    id;
    owner_account;
    subnet_ids;
    vpc_security_group_ids;
    workgroup_name;
  }

type t = {
  address : string prop;
  arn : string prop;
  endpoint_name : string prop;
  id : string prop;
  owner_account : string prop;
  port : float prop;
  subnet_ids : string list prop;
  vpc_endpoint : vpc_endpoint list prop;
  vpc_security_group_ids : string list prop;
  workgroup_name : string prop;
}

let make ?id ?owner_account ?vpc_security_group_ids ~endpoint_name
    ~subnet_ids ~workgroup_name __id =
  let __type = "aws_redshiftserverless_endpoint_access" in
  let __attrs =
    ({
       address = Prop.computed __type __id "address";
       arn = Prop.computed __type __id "arn";
       endpoint_name = Prop.computed __type __id "endpoint_name";
       id = Prop.computed __type __id "id";
       owner_account = Prop.computed __type __id "owner_account";
       port = Prop.computed __type __id "port";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       vpc_endpoint = Prop.computed __type __id "vpc_endpoint";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
       workgroup_name = Prop.computed __type __id "workgroup_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_endpoint_access
        (aws_redshiftserverless_endpoint_access ?id ?owner_account
           ?vpc_security_group_ids ~endpoint_name ~subnet_ids
           ~workgroup_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?owner_account ?vpc_security_group_ids
    ~endpoint_name ~subnet_ids ~workgroup_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?owner_account ?vpc_security_group_ids ~endpoint_name
      ~subnet_ids ~workgroup_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
