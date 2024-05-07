(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_interfaces = { network_interface_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interfaces) -> ()

let yojson_of_network_interfaces =
  (function
   | { network_interface_id = v_network_interface_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       `Assoc bnds
    : network_interfaces -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interfaces

[@@@deriving.end]

type aws_s3outposts_endpoint = {
  access_type : string prop option; [@option]
  customer_owned_ipv4_pool : string prop option; [@option]
  id : string prop option; [@option]
  outpost_id : string prop;
  security_group_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3outposts_endpoint) -> ()

let yojson_of_aws_s3outposts_endpoint =
  (function
   | {
       access_type = v_access_type;
       customer_owned_ipv4_pool = v_customer_owned_ipv4_pool;
       id = v_id;
       outpost_id = v_outpost_id;
       security_group_id = v_security_group_id;
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
           yojson_of_prop yojson_of_string v_security_group_id
         in
         ("security_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_outpost_id in
         ("outpost_id", arg) :: bnds
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
         match v_customer_owned_ipv4_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_owned_ipv4_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3outposts_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3outposts_endpoint

[@@@deriving.end]

let aws_s3outposts_endpoint ?access_type ?customer_owned_ipv4_pool
    ?id ~outpost_id ~security_group_id ~subnet_id () :
    aws_s3outposts_endpoint =
  {
    access_type;
    customer_owned_ipv4_pool;
    id;
    outpost_id;
    security_group_id;
    subnet_id;
  }

type t = {
  tf_name : string;
  access_type : string prop;
  arn : string prop;
  cidr_block : string prop;
  creation_time : string prop;
  customer_owned_ipv4_pool : string prop;
  id : string prop;
  network_interfaces : network_interfaces list prop;
  outpost_id : string prop;
  security_group_id : string prop;
  subnet_id : string prop;
}

let make ?access_type ?customer_owned_ipv4_pool ?id ~outpost_id
    ~security_group_id ~subnet_id __id =
  let __type = "aws_s3outposts_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       access_type = Prop.computed __type __id "access_type";
       arn = Prop.computed __type __id "arn";
       cidr_block = Prop.computed __type __id "cidr_block";
       creation_time = Prop.computed __type __id "creation_time";
       customer_owned_ipv4_pool =
         Prop.computed __type __id "customer_owned_ipv4_pool";
       id = Prop.computed __type __id "id";
       network_interfaces =
         Prop.computed __type __id "network_interfaces";
       outpost_id = Prop.computed __type __id "outpost_id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3outposts_endpoint
        (aws_s3outposts_endpoint ?access_type
           ?customer_owned_ipv4_pool ?id ~outpost_id
           ~security_group_id ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?access_type ?customer_owned_ipv4_pool ?id
    ~outpost_id ~security_group_id ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?access_type ?customer_owned_ipv4_pool ?id ~outpost_id
      ~security_group_id ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
