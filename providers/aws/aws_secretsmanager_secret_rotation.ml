(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rotation_rules = {
  automatically_after_days : float prop option; [@option]
  duration : string prop option; [@option]
  schedule_expression : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rotation_rules) -> ()

let yojson_of_rotation_rules =
  (function
   | {
       automatically_after_days = v_automatically_after_days;
       duration = v_duration;
       schedule_expression = v_schedule_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_schedule_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatically_after_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "automatically_after_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rotation_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rotation_rules

[@@@deriving.end]

type aws_secretsmanager_secret_rotation = {
  id : string prop option; [@option]
  rotate_immediately : bool prop option; [@option]
  rotation_lambda_arn : string prop option; [@option]
  secret_id : string prop;
  rotation_rules : rotation_rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_secretsmanager_secret_rotation) -> ()

let yojson_of_aws_secretsmanager_secret_rotation =
  (function
   | {
       id = v_id;
       rotate_immediately = v_rotate_immediately;
       rotation_lambda_arn = v_rotation_lambda_arn;
       secret_id = v_secret_id;
       rotation_rules = v_rotation_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rotation_rules v_rotation_rules
         in
         ("rotation_rules", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
       in
       let bnds =
         match v_rotation_lambda_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rotation_lambda_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rotate_immediately with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rotate_immediately", arg in
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
       `Assoc bnds
    : aws_secretsmanager_secret_rotation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_secretsmanager_secret_rotation

[@@@deriving.end]

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
