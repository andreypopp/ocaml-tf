(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_redshiftserverless_namespace
    ?admin_password_secret_kms_key_id ?admin_user_password
    ?admin_username ?db_name ?default_iam_role_arn ?iam_roles ?id
    ?kms_key_id ?log_exports ?manage_admin_password ?tags ?tags_all
    ~namespace_name __resource_id =
  let __resource_type = "aws_redshiftserverless_namespace" in
  let __resource =
    ({
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
      : aws_redshiftserverless_namespace)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_namespace __resource);
  let __resource_attributes =
    ({
       admin_password_secret_arn =
         Prop.computed __resource_type __resource_id
           "admin_password_secret_arn";
       admin_password_secret_kms_key_id =
         Prop.computed __resource_type __resource_id
           "admin_password_secret_kms_key_id";
       admin_user_password =
         Prop.computed __resource_type __resource_id
           "admin_user_password";
       admin_username =
         Prop.computed __resource_type __resource_id "admin_username";
       arn = Prop.computed __resource_type __resource_id "arn";
       db_name =
         Prop.computed __resource_type __resource_id "db_name";
       default_iam_role_arn =
         Prop.computed __resource_type __resource_id
           "default_iam_role_arn";
       iam_roles =
         Prop.computed __resource_type __resource_id "iam_roles";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       log_exports =
         Prop.computed __resource_type __resource_id "log_exports";
       manage_admin_password =
         Prop.computed __resource_type __resource_id
           "manage_admin_password";
       namespace_id =
         Prop.computed __resource_type __resource_id "namespace_id";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
