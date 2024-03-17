(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_apprunner_deployment__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_apprunner_deployment__timeouts *)

type aws_apprunner_deployment = {
  service_arn : string;  (** service_arn *)
  timeouts : aws_apprunner_deployment__timeouts option;
}
[@@deriving yojson_of]
(** aws_apprunner_deployment *)

let aws_apprunner_deployment ?timeouts ~service_arn __resource_id =
  let __resource_type = "aws_apprunner_deployment" in
  let __resource = { service_arn; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_deployment __resource);
  ()
