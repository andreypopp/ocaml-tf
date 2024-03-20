(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~distribution_id ~monitoring_subscription __id =
  let __type = "aws_cloudfront_monitoring_subscription" in
  let __attrs =
    ({
       distribution_id = Prop.computed __type __id "distribution_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_monitoring_subscription
        (aws_cloudfront_monitoring_subscription ?id ~distribution_id
           ~monitoring_subscription ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~distribution_id ~monitoring_subscription
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~distribution_id ~monitoring_subscription __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
