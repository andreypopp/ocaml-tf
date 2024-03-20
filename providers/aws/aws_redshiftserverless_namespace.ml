(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_namespace = {
  admin_password_secret_kms_key_id : string prop option; [@option]
      (** admin_password_secret_kms_key_id *)
  admin_user_password : string prop option; [@option]
      (** admin_user_password *)
  admin_username : string prop option; [@option]
      (** admin_username *)
  db_name : string prop option; [@option]  (** db_name *)
  default_iam_role_arn : string prop option; [@option]
      (** default_iam_role_arn *)
  iam_roles : string prop list option; [@option]  (** iam_roles *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  log_exports : string prop list option; [@option]
      (** log_exports *)
  manage_admin_password : bool prop option; [@option]
      (** manage_admin_password *)
  namespace_name : string prop;  (** namespace_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_namespace *)

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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?admin_password_secret_kms_key_id ?admin_user_password
    ?admin_username ?db_name ?default_iam_role_arn ?iam_roles ?id
    ?kms_key_id ?log_exports ?manage_admin_password ?tags ?tags_all
    ~namespace_name __id =
  let __type = "aws_redshiftserverless_namespace" in
  let __attrs =
    ({
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
