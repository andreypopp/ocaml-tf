(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rotation_rules = {
  automatically_after_days : float prop;
  duration : string prop;
  schedule_expression : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_schedule_expression
         in
         ("schedule_expression", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_automatically_after_days
         in
         ("automatically_after_days", arg) :: bnds
       in
       `Assoc bnds
    : rotation_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rotation_rules

[@@@deriving.end]

type aws_secretsmanager_secret_rotation = {
  id : string prop option; [@option]
  secret_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_secretsmanager_secret_rotation) -> ()

let yojson_of_aws_secretsmanager_secret_rotation =
  (function
   | { id = v_id; secret_id = v_secret_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
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

let aws_secretsmanager_secret_rotation ?id ~secret_id () :
    aws_secretsmanager_secret_rotation =
  { id; secret_id }

type t = {
  id : string prop;
  rotation_enabled : bool prop;
  rotation_lambda_arn : string prop;
  rotation_rules : rotation_rules list prop;
  secret_id : string prop;
}

let make ?id ~secret_id __id =
  let __type = "aws_secretsmanager_secret_rotation" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       rotation_enabled =
         Prop.computed __type __id "rotation_enabled";
       rotation_lambda_arn =
         Prop.computed __type __id "rotation_lambda_arn";
       rotation_rules = Prop.computed __type __id "rotation_rules";
       secret_id = Prop.computed __type __id "secret_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_secretsmanager_secret_rotation
        (aws_secretsmanager_secret_rotation ?id ~secret_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~secret_id __id =
  let (r : _ Tf_core.resource) = make ?id ~secret_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
