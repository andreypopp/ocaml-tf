(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_apprunner_deployment = {
  service_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apprunner_deployment) -> ()

let yojson_of_aws_apprunner_deployment =
  (function
   | { service_arn = v_service_arn; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_arn in
         ("service_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_apprunner_deployment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apprunner_deployment

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_apprunner_deployment ?timeouts ~service_arn () :
    aws_apprunner_deployment =
  { service_arn; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  operation_id : string prop;
  service_arn : string prop;
  status : string prop;
}

let make ?timeouts ~service_arn __id =
  let __type = "aws_apprunner_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       operation_id = Prop.computed __type __id "operation_id";
       service_arn = Prop.computed __type __id "service_arn";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_deployment
        (aws_apprunner_deployment ?timeouts ~service_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~service_arn __id =
  let (r : _ Tf_core.resource) = make ?timeouts ~service_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
