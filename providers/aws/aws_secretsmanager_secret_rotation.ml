(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?rotate_immediately ?rotation_lambda_arn ~secret_id
    ~rotation_rules __id =
  let __type = "aws_secretsmanager_secret_rotation" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       rotate_immediately =
         Prop.computed __type __id "rotate_immediately";
       rotation_enabled =
         Prop.computed __type __id "rotation_enabled";
       rotation_lambda_arn =
         Prop.computed __type __id "rotation_lambda_arn";
       secret_id = Prop.computed __type __id "secret_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_secretsmanager_secret_rotation
        (aws_secretsmanager_secret_rotation ?id ?rotate_immediately
           ?rotation_lambda_arn ~secret_id ~rotation_rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?rotate_immediately ?rotation_lambda_arn
    ~secret_id ~rotation_rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ?rotate_immediately ?rotation_lambda_arn ~secret_id
      ~rotation_rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
