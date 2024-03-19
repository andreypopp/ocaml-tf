(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?timeouts ~service_arn __resource_id =
  let __resource_type = "aws_apprunner_deployment" in
  let __resource =
    aws_apprunner_deployment ?timeouts ~service_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_deployment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       operation_id =
         Prop.computed __resource_type __resource_id "operation_id";
       service_arn =
         Prop.computed __resource_type __resource_id "service_arn";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
