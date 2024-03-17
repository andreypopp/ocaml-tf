(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_secretsmanager_secret_rotation__rotation_rules = {
  automatically_after_days : float option; [@option]
      (** automatically_after_days *)
  duration : string option; [@option]  (** duration *)
  schedule_expression : string option; [@option]
      (** schedule_expression *)
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret_rotation__rotation_rules *)

type aws_secretsmanager_secret_rotation = {
  id : string option; [@option]  (** id *)
  rotate_immediately : bool option; [@option]
      (** rotate_immediately *)
  rotation_lambda_arn : string option; [@option]
      (** rotation_lambda_arn *)
  secret_id : string;  (** secret_id *)
  rotation_rules :
    aws_secretsmanager_secret_rotation__rotation_rules list;
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret_rotation *)

let aws_secretsmanager_secret_rotation ?id ?rotate_immediately
    ?rotation_lambda_arn ~secret_id ~rotation_rules __resource_id =
  let __resource_type = "aws_secretsmanager_secret_rotation" in
  let __resource =
    {
      id;
      rotate_immediately;
      rotation_lambda_arn;
      secret_id;
      rotation_rules;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret_rotation __resource);
  ()
