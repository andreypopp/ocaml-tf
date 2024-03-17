(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_metric_filter__metric_transformation = {
  default_value : string option; [@option]  (** default_value *)
  dimensions : (string * string) list option; [@option]
      (** dimensions *)
  name : string;  (** name *)
  namespace : string;  (** namespace *)
  unit : string option; [@option]  (** unit *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_metric_filter__metric_transformation *)

type aws_cloudwatch_log_metric_filter = {
  log_group_name : string;  (** log_group_name *)
  name : string;  (** name *)
  pattern : string;  (** pattern *)
  metric_transformation :
    aws_cloudwatch_log_metric_filter__metric_transformation list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_metric_filter *)

let aws_cloudwatch_log_metric_filter ~log_group_name ~name ~pattern
    ~metric_transformation __resource_id =
  let __resource_type = "aws_cloudwatch_log_metric_filter" in
  let __resource =
    { log_group_name; name; pattern; metric_transformation }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_metric_filter __resource);
  ()
