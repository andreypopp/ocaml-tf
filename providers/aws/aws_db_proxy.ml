(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth = {
  auth_scheme : string prop option; [@option]
  client_password_auth_type : string prop option; [@option]
  description : string prop option; [@option]
  iam_auth : string prop option; [@option]
  secret_arn : string prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth) -> ()

let yojson_of_auth =
  (function
   | {
       auth_scheme = v_auth_scheme;
       client_password_auth_type = v_client_password_auth_type;
       description = v_description;
       iam_auth = v_iam_auth;
       secret_arn = v_secret_arn;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_auth", arg in
             bnd :: bnds
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
         match v_client_password_auth_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_password_auth_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_scheme", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth

[@@@deriving.end]

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

type aws_db_proxy = {
  debug_logging : bool prop option; [@option]
  engine_family : string prop;
  id : string prop option; [@option]
  idle_client_timeout : float prop option; [@option]
  name : string prop;
  require_tls : bool prop option; [@option]
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  vpc_subnet_ids : string prop list;
  auth : auth list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_proxy) -> ()

let yojson_of_aws_db_proxy =
  (function
   | {
       debug_logging = v_debug_logging;
       engine_family = v_engine_family;
       id = v_id;
       idle_client_timeout = v_idle_client_timeout;
       name = v_name;
       require_tls = v_require_tls;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_security_group_ids = v_vpc_security_group_ids;
       vpc_subnet_ids = v_vpc_subnet_ids;
       auth = v_auth;
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
         let arg = yojson_of_list yojson_of_auth v_auth in
         ("auth", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_require_tls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_tls", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_idle_client_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_client_timeout", arg in
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
         let arg = yojson_of_prop yojson_of_string v_engine_family in
         ("engine_family", arg) :: bnds
       in
       let bnds =
         match v_debug_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "debug_logging", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_db_proxy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_proxy

[@@@deriving.end]

let auth ?auth_scheme ?client_password_auth_type ?description
    ?iam_auth ?secret_arn ?username () : auth =
  {
    auth_scheme;
    client_password_auth_type;
    description;
    iam_auth;
    secret_arn;
    username;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_db_proxy ?debug_logging ?id ?idle_client_timeout ?require_tls
    ?tags ?tags_all ?vpc_security_group_ids ?timeouts ~engine_family
    ~name ~role_arn ~vpc_subnet_ids ~auth () : aws_db_proxy =
  {
    debug_logging;
    engine_family;
    id;
    idle_client_timeout;
    name;
    require_tls;
    role_arn;
    tags;
    tags_all;
    vpc_security_group_ids;
    vpc_subnet_ids;
    auth;
    timeouts;
  }

type t = {
  arn : string prop;
  debug_logging : bool prop;
  endpoint : string prop;
  engine_family : string prop;
  id : string prop;
  idle_client_timeout : float prop;
  name : string prop;
  require_tls : bool prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
  vpc_subnet_ids : string list prop;
}

let make ?debug_logging ?id ?idle_client_timeout ?require_tls ?tags
    ?tags_all ?vpc_security_group_ids ?timeouts ~engine_family ~name
    ~role_arn ~vpc_subnet_ids ~auth __id =
  let __type = "aws_db_proxy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       debug_logging = Prop.computed __type __id "debug_logging";
       endpoint = Prop.computed __type __id "endpoint";
       engine_family = Prop.computed __type __id "engine_family";
       id = Prop.computed __type __id "id";
       idle_client_timeout =
         Prop.computed __type __id "idle_client_timeout";
       name = Prop.computed __type __id "name";
       require_tls = Prop.computed __type __id "require_tls";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
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
      yojson_of_aws_db_proxy
        (aws_db_proxy ?debug_logging ?id ?idle_client_timeout
           ?require_tls ?tags ?tags_all ?vpc_security_group_ids
           ?timeouts ~engine_family ~name ~role_arn ~vpc_subnet_ids
           ~auth ());
    attrs = __attrs;
  }

let register ?tf_module ?debug_logging ?id ?idle_client_timeout
    ?require_tls ?tags ?tags_all ?vpc_security_group_ids ?timeouts
    ~engine_family ~name ~role_arn ~vpc_subnet_ids ~auth __id =
  let (r : _ Tf_core.resource) =
    make ?debug_logging ?id ?idle_client_timeout ?require_tls ?tags
      ?tags_all ?vpc_security_group_ids ?timeouts ~engine_family
      ~name ~role_arn ~vpc_subnet_ids ~auth __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
