(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type monitoring_subscription__realtime_metrics_subscription_config = {
  realtime_metrics_subscription_status : string prop;
      (** realtime_metrics_subscription_status *)
}
[@@deriving yojson_of]
(** monitoring_subscription__realtime_metrics_subscription_config *)

type monitoring_subscription = {
  realtime_metrics_subscription_config :
    monitoring_subscription__realtime_metrics_subscription_config
    list;
}
[@@deriving yojson_of]
(** monitoring_subscription *)

type aws_cloudfront_monitoring_subscription = {
  distribution_id : string prop;  (** distribution_id *)
  id : string prop option; [@option]  (** id *)
  monitoring_subscription : monitoring_subscription list;
}
[@@deriving yojson_of]
(** aws_cloudfront_monitoring_subscription *)

let monitoring_subscription__realtime_metrics_subscription_config
    ~realtime_metrics_subscription_status () :
    monitoring_subscription__realtime_metrics_subscription_config =
  { realtime_metrics_subscription_status }

let monitoring_subscription ~realtime_metrics_subscription_config ()
    : monitoring_subscription =
  { realtime_metrics_subscription_config }

let aws_cloudfront_monitoring_subscription ?id ~distribution_id
    ~monitoring_subscription () :
    aws_cloudfront_monitoring_subscription =
  { distribution_id; id; monitoring_subscription }

type t = { distribution_id : string prop; id : string prop }

let register ?tf_module ?id ~distribution_id ~monitoring_subscription
    __resource_id =
  let __resource_type = "aws_cloudfront_monitoring_subscription" in
  let __resource =
    aws_cloudfront_monitoring_subscription ?id ~distribution_id
      ~monitoring_subscription ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_monitoring_subscription __resource);
  let __resource_attributes =
    ({
       distribution_id =
         Prop.computed __resource_type __resource_id
           "distribution_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
