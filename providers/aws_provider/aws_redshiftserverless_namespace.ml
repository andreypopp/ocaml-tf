(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_namespace = {
  admin_user_password : string option; [@option]
      (** admin_user_password *)
  default_iam_role_arn : string option; [@option]
      (** default_iam_role_arn *)
  log_exports : string list option; [@option]  (** log_exports *)
  manage_admin_password : bool option; [@option]
      (** manage_admin_password *)
  namespace_name : string;  (** namespace_name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_namespace *)

let aws_redshiftserverless_namespace ?admin_user_password
    ?default_iam_role_arn ?log_exports ?manage_admin_password ?tags
    ~namespace_name __resource_id =
  let __resource_type = "aws_redshiftserverless_namespace" in
  let __resource =
    {
      admin_user_password;
      default_iam_role_arn;
      log_exports;
      manage_admin_password;
      namespace_name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_namespace __resource);
  ()
