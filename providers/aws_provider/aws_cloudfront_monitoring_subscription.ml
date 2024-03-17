(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudfront_monitoring_subscription__monitoring_subscription__realtime_metrics_subscription_config = {
  realtime_metrics_subscription_status : string;
      (** realtime_metrics_subscription_status *)
}
[@@deriving yojson_of]
(** aws_cloudfront_monitoring_subscription__monitoring_subscription__realtime_metrics_subscription_config *)

type aws_cloudfront_monitoring_subscription__monitoring_subscription = {
  realtime_metrics_subscription_config :
    aws_cloudfront_monitoring_subscription__monitoring_subscription__realtime_metrics_subscription_config
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_monitoring_subscription__monitoring_subscription *)

type aws_cloudfront_monitoring_subscription = {
  distribution_id : string;  (** distribution_id *)
  monitoring_subscription :
    aws_cloudfront_monitoring_subscription__monitoring_subscription
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_monitoring_subscription *)

let aws_cloudfront_monitoring_subscription ~distribution_id
    ~monitoring_subscription __resource_id =
  let __resource_type = "aws_cloudfront_monitoring_subscription" in
  let __resource = { distribution_id; monitoring_subscription } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_monitoring_subscription __resource);
  ()
