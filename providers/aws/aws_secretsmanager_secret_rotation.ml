(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rotation_rules = {
  automatically_after_days : float prop option; [@option]
      (** automatically_after_days *)
  duration : string prop option; [@option]  (** duration *)
  schedule_expression : string prop option; [@option]
      (** schedule_expression *)
}
[@@deriving yojson_of]
(** rotation_rules *)

type aws_secretsmanager_secret_rotation = {
  id : string prop option; [@option]  (** id *)
  rotate_immediately : bool prop option; [@option]
      (** rotate_immediately *)
  rotation_lambda_arn : string prop option; [@option]
      (** rotation_lambda_arn *)
  secret_id : string prop;  (** secret_id *)
  rotation_rules : rotation_rules list;
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret_rotation *)

let rotation_rules ?automatically_after_days ?duration
    ?schedule_expression () : rotation_rules =
  { automatically_after_days; duration; schedule_expression }

let aws_secretsmanager_secret_rotation ?id ?rotate_immediately
    ?rotation_lambda_arn ~secret_id ~rotation_rules () :
    aws_secretsmanager_secret_rotation =
  {
    id;
    rotate_immediately;
    rotation_lambda_arn;
    secret_id;
    rotation_rules;
  }

type t = {
  id : string prop;
  rotate_immediately : bool prop;
  rotation_enabled : bool prop;
  rotation_lambda_arn : string prop;
  secret_id : string prop;
}

let register ?tf_module ?id ?rotate_immediately ?rotation_lambda_arn
    ~secret_id ~rotation_rules __resource_id =
  let __resource_type = "aws_secretsmanager_secret_rotation" in
  let __resource =
    aws_secretsmanager_secret_rotation ?id ?rotate_immediately
      ?rotation_lambda_arn ~secret_id ~rotation_rules ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret_rotation __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       rotate_immediately =
         Prop.computed __resource_type __resource_id
           "rotate_immediately";
       rotation_enabled =
         Prop.computed __resource_type __resource_id
           "rotation_enabled";
       rotation_lambda_arn =
         Prop.computed __resource_type __resource_id
           "rotation_lambda_arn";
       secret_id =
         Prop.computed __resource_type __resource_id "secret_id";
     }
      : t)
  in
  __resource_attributes
