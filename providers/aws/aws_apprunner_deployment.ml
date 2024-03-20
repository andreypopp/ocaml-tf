(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_apprunner_deployment = {
  service_arn : string prop;  (** service_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_apprunner_deployment *)

let timeouts ?create () : timeouts = { create }

let aws_apprunner_deployment ?timeouts ~service_arn () :
    aws_apprunner_deployment =
  { service_arn; timeouts }

type t = {
  id : string prop;
  operation_id : string prop;
  service_arn : string prop;
  status : string prop;
}

let make ?timeouts ~service_arn __id =
  let __type = "aws_apprunner_deployment" in
  let __attrs =
    ({
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
