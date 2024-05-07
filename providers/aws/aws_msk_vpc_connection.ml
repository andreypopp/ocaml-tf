(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_vpc_connection = {
  authentication : string prop;
  client_subnets : string prop list;
  id : string prop option; [@option]
  security_groups : string prop list;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_cluster_arn : string prop;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_vpc_connection) -> ()

let yojson_of_aws_msk_vpc_connection =
  (function
   | {
       authentication = v_authentication;
       client_subnets = v_client_subnets;
       id = v_id;
       security_groups = v_security_groups;
       tags = v_tags;
       tags_all = v_tags_all;
       target_cluster_arn = v_target_cluster_arn;
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
           yojson_of_prop yojson_of_string v_target_cluster_arn
         in
         ("target_cluster_arn", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_groups
         in
         ("security_groups", arg) :: bnds
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_client_subnets
         in
         ("client_subnets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication
         in
         ("authentication", arg) :: bnds
       in
       `Assoc bnds
    : aws_msk_vpc_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_vpc_connection

[@@@deriving.end]

let aws_msk_vpc_connection ?id ?tags ?tags_all ~authentication
    ~client_subnets ~security_groups ~target_cluster_arn ~vpc_id () :
    aws_msk_vpc_connection =
  {
    authentication;
    client_subnets;
    id;
    security_groups;
    tags;
    tags_all;
    target_cluster_arn;
    vpc_id;
  }

type t = {
  tf_name : string;
  arn : string prop;
  authentication : string prop;
  client_subnets : string list prop;
  id : string prop;
  security_groups : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_cluster_arn : string prop;
  vpc_id : string prop;
}

let make ?id ?tags ?tags_all ~authentication ~client_subnets
    ~security_groups ~target_cluster_arn ~vpc_id __id =
  let __type = "aws_msk_vpc_connection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       authentication = Prop.computed __type __id "authentication";
       client_subnets = Prop.computed __type __id "client_subnets";
       id = Prop.computed __type __id "id";
       security_groups = Prop.computed __type __id "security_groups";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_cluster_arn =
         Prop.computed __type __id "target_cluster_arn";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_vpc_connection
        (aws_msk_vpc_connection ?id ?tags ?tags_all ~authentication
           ~client_subnets ~security_groups ~target_cluster_arn
           ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~authentication
    ~client_subnets ~security_groups ~target_cluster_arn ~vpc_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~authentication ~client_subnets
      ~security_groups ~target_cluster_arn ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
