(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth = {
  auth_scheme : string prop;
  client_password_auth_type : string prop;
  description : string prop;
  iam_auth : string prop;
  secret_arn : string prop;
  username : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_arn in
         ("secret_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iam_auth in
         ("iam_auth", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_client_password_auth_type
         in
         ("client_password_auth_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_scheme in
         ("auth_scheme", arg) :: bnds
       in
       `Assoc bnds
    : auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth

[@@@deriving.end]

type aws_db_proxy = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_proxy) -> ()

let yojson_of_aws_db_proxy =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_db_proxy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_proxy

[@@@deriving.end]

let aws_db_proxy ?id ~name () : aws_db_proxy = { id; name }

type t = {
  arn : string prop;
  auth : auth list prop;
  debug_logging : bool prop;
  endpoint : string prop;
  engine_family : string prop;
  id : string prop;
  idle_client_timeout : float prop;
  name : string prop;
  require_tls : bool prop;
  role_arn : string prop;
  vpc_id : string prop;
  vpc_security_group_ids : string list prop;
  vpc_subnet_ids : string list prop;
}

let make ?id ~name __id =
  let __type = "aws_db_proxy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auth = Prop.computed __type __id "auth";
       debug_logging = Prop.computed __type __id "debug_logging";
       endpoint = Prop.computed __type __id "endpoint";
       engine_family = Prop.computed __type __id "engine_family";
       id = Prop.computed __type __id "id";
       idle_client_timeout =
         Prop.computed __type __id "idle_client_timeout";
       name = Prop.computed __type __id "name";
       require_tls = Prop.computed __type __id "require_tls";
       role_arn = Prop.computed __type __id "role_arn";
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
    json = yojson_of_aws_db_proxy (aws_db_proxy ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
