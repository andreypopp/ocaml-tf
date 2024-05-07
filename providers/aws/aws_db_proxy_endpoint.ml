(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type aws_db_proxy_endpoint = {
  db_proxy_endpoint_name : string prop;
  db_proxy_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_role : string prop option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  vpc_subnet_ids : string prop list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_proxy_endpoint) -> ()

let yojson_of_aws_db_proxy_endpoint =
  (function
   | {
       db_proxy_endpoint_name = v_db_proxy_endpoint_name;
       db_proxy_name = v_db_proxy_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       target_role = v_target_role;
       vpc_security_group_ids = v_vpc_security_group_ids;
       vpc_subnet_ids = v_vpc_subnet_ids;
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_vpc_subnet_ids
         in
         ("vpc_subnet_ids", arg) :: bnds
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
         match v_target_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_role", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_db_proxy_name in
         ("db_proxy_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_db_proxy_endpoint_name
         in
         ("db_proxy_endpoint_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_db_proxy_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_proxy_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_db_proxy_endpoint ?id ?tags ?tags_all ?target_role
    ?vpc_security_group_ids ?timeouts ~db_proxy_endpoint_name
    ~db_proxy_name ~vpc_subnet_ids () : aws_db_proxy_endpoint =
  {
    db_proxy_endpoint_name;
    db_proxy_name;
    id;
    tags;
    tags_all;
    target_role;
    vpc_security_group_ids;
    vpc_subnet_ids;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  db_proxy_endpoint_name : string prop;
  db_proxy_name : string prop;
  endpoint : string prop;
  id : string prop;
  is_default : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_role : string prop;
  vpc_id : string prop;
  vpc_security_group_ids : string list prop;
  vpc_subnet_ids : string list prop;
}

let make ?id ?tags ?tags_all ?target_role ?vpc_security_group_ids
    ?timeouts ~db_proxy_endpoint_name ~db_proxy_name ~vpc_subnet_ids
    __id =
  let __type = "aws_db_proxy_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       db_proxy_endpoint_name =
         Prop.computed __type __id "db_proxy_endpoint_name";
       db_proxy_name = Prop.computed __type __id "db_proxy_name";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_role = Prop.computed __type __id "target_role";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
       vpc_subnet_ids = Prop.computed __type __id "vpc_subnet_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_proxy_endpoint
        (aws_db_proxy_endpoint ?id ?tags ?tags_all ?target_role
           ?vpc_security_group_ids ?timeouts ~db_proxy_endpoint_name
           ~db_proxy_name ~vpc_subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?target_role
    ?vpc_security_group_ids ?timeouts ~db_proxy_endpoint_name
    ~db_proxy_name ~vpc_subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?target_role ?vpc_security_group_ids
      ?timeouts ~db_proxy_endpoint_name ~db_proxy_name
      ~vpc_subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
