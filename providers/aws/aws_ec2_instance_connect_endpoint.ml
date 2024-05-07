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

type aws_ec2_instance_connect_endpoint = {
  preserve_client_ip : bool prop option; [@option]
  security_group_ids : string prop list option; [@option]
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_instance_connect_endpoint) -> ()

let yojson_of_aws_ec2_instance_connect_endpoint =
  (function
   | {
       preserve_client_ip = v_preserve_client_ip;
       security_group_ids = v_security_group_ids;
       subnet_id = v_subnet_id;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_client_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_client_ip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_instance_connect_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_instance_connect_endpoint

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_instance_connect_endpoint ?preserve_client_ip
    ?security_group_ids ?tags ?timeouts ~subnet_id () :
    aws_ec2_instance_connect_endpoint =
  {
    preserve_client_ip;
    security_group_ids;
    subnet_id;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  dns_name : string prop;
  fips_dns_name : string prop;
  id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preserve_client_ip : bool prop;
  security_group_ids : string list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?preserve_client_ip ?security_group_ids ?tags ?timeouts
    ~subnet_id __id =
  let __type = "aws_ec2_instance_connect_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       dns_name = Prop.computed __type __id "dns_name";
       fips_dns_name = Prop.computed __type __id "fips_dns_name";
       id = Prop.computed __type __id "id";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       preserve_client_ip =
         Prop.computed __type __id "preserve_client_ip";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_instance_connect_endpoint
        (aws_ec2_instance_connect_endpoint ?preserve_client_ip
           ?security_group_ids ?tags ?timeouts ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?preserve_client_ip ?security_group_ids ?tags
    ?timeouts ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?preserve_client_ip ?security_group_ids ?tags ?timeouts
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
