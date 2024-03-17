(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_namespace = {
  admin_password_secret_kms_key_id : string option; [@option]
      (** admin_password_secret_kms_key_id *)
  admin_user_password : string option; [@option]
      (** admin_user_password *)
  admin_username : string option; [@option]  (** admin_username *)
  db_name : string option; [@option]  (** db_name *)
  default_iam_role_arn : string option; [@option]
      (** default_iam_role_arn *)
  iam_roles : string list option; [@option]  (** iam_roles *)
  id : string option; [@option]  (** id *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  log_exports : string list option; [@option]  (** log_exports *)
  manage_admin_password : bool option; [@option]
      (** manage_admin_password *)
  namespace_name : string;  (** namespace_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_namespace *)

let aws_redshiftserverless_namespace
    ?admin_password_secret_kms_key_id ?admin_user_password
    ?admin_username ?db_name ?default_iam_role_arn ?iam_roles ?id
    ?kms_key_id ?log_exports ?manage_admin_password ?tags ?tags_all
    ~namespace_name __resource_id =
  let __resource_type = "aws_redshiftserverless_namespace" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_namespace __resource);
  ()
