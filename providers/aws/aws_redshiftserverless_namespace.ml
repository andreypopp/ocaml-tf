(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_namespace = {
  admin_password_secret_kms_key_id : string prop option; [@option]
  admin_user_password : string prop option; [@option]
  admin_username : string prop option; [@option]
  db_name : string prop option; [@option]
  default_iam_role_arn : string prop option; [@option]
  iam_roles : string prop list option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  log_exports : string prop list option; [@option]
  manage_admin_password : bool prop option; [@option]
  namespace_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftserverless_namespace) -> ()

let yojson_of_aws_redshiftserverless_namespace =
  (function
   | {
       admin_password_secret_kms_key_id =
         v_admin_password_secret_kms_key_id;
       admin_user_password = v_admin_user_password;
       admin_username = v_admin_username;
       db_name = v_db_name;
       default_iam_role_arn = v_default_iam_role_arn;
       iam_roles = v_iam_roles;
       id = v_id;
       kms_key_id = v_kms_key_id;
       log_exports = v_log_exports;
       manage_admin_password = v_manage_admin_password;
       namespace_name = v_namespace_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_name
         in
         ("namespace_name", arg) :: bnds
       in
       let bnds =
         match v_manage_admin_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "manage_admin_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_exports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "log_exports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         match v_iam_roles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "iam_roles", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_iam_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_iam_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "admin_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_user_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "admin_user_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_password_secret_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "admin_password_secret_kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshiftserverless_namespace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_namespace

[@@@deriving.end]

let aws_redshiftserverless_namespace
    ?admin_password_secret_kms_key_id ?admin_user_password
    ?admin_username ?db_name ?default_iam_role_arn ?iam_roles ?id
    ?kms_key_id ?log_exports ?manage_admin_password ?tags ?tags_all
    ~namespace_name () : aws_redshiftserverless_namespace =
  {
    admin_password_secret_kms_key_id;
    admin_user_password;
    admin_username;
    db_name;
    default_iam_role_arn;
    iam_roles;
    id;
    kms_key_id;
    log_exports;
    manage_admin_password;
    namespace_name;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  admin_password_secret_arn : string prop;
  admin_password_secret_kms_key_id : string prop;
  admin_user_password : string prop;
  admin_username : string prop;
  arn : string prop;
  db_name : string prop;
  default_iam_role_arn : string prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  log_exports : string list prop;
  manage_admin_password : bool prop;
  namespace_id : string prop;
  namespace_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?admin_password_secret_kms_key_id ?admin_user_password
    ?admin_username ?db_name ?default_iam_role_arn ?iam_roles ?id
    ?kms_key_id ?log_exports ?manage_admin_password ?tags ?tags_all
    ~namespace_name __id =
  let __type = "aws_redshiftserverless_namespace" in
  let __attrs =
    ({
       tf_name = __id;
       admin_password_secret_arn =
         Prop.computed __type __id "admin_password_secret_arn";
       admin_password_secret_kms_key_id =
         Prop.computed __type __id "admin_password_secret_kms_key_id";
       admin_user_password =
         Prop.computed __type __id "admin_user_password";
       admin_username = Prop.computed __type __id "admin_username";
       arn = Prop.computed __type __id "arn";
       db_name = Prop.computed __type __id "db_name";
       default_iam_role_arn =
         Prop.computed __type __id "default_iam_role_arn";
       iam_roles = Prop.computed __type __id "iam_roles";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       log_exports = Prop.computed __type __id "log_exports";
       manage_admin_password =
         Prop.computed __type __id "manage_admin_password";
       namespace_id = Prop.computed __type __id "namespace_id";
       namespace_name = Prop.computed __type __id "namespace_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_namespace
        (aws_redshiftserverless_namespace
           ?admin_password_secret_kms_key_id ?admin_user_password
           ?admin_username ?db_name ?default_iam_role_arn ?iam_roles
           ?id ?kms_key_id ?log_exports ?manage_admin_password ?tags
           ?tags_all ~namespace_name ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_password_secret_kms_key_id
    ?admin_user_password ?admin_username ?db_name
    ?default_iam_role_arn ?iam_roles ?id ?kms_key_id ?log_exports
    ?manage_admin_password ?tags ?tags_all ~namespace_name __id =
  let (r : _ Tf_core.resource) =
    make ?admin_password_secret_kms_key_id ?admin_user_password
      ?admin_username ?db_name ?default_iam_role_arn ?iam_roles ?id
      ?kms_key_id ?log_exports ?manage_admin_password ?tags ?tags_all
      ~namespace_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
