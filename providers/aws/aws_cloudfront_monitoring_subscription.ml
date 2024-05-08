(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type monitoring_subscription__realtime_metrics_subscription_config = {
  realtime_metrics_subscription_status : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       monitoring_subscription__realtime_metrics_subscription_config) ->
  ()

let yojson_of_monitoring_subscription__realtime_metrics_subscription_config
    =
  (function
   | {
       realtime_metrics_subscription_status =
         v_realtime_metrics_subscription_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_realtime_metrics_subscription_status
         in
         ("realtime_metrics_subscription_status", arg) :: bnds
       in
       `Assoc bnds
    : monitoring_subscription__realtime_metrics_subscription_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_monitoring_subscription__realtime_metrics_subscription_config

[@@@deriving.end]

type monitoring_subscription = {
  realtime_metrics_subscription_config :
    monitoring_subscription__realtime_metrics_subscription_config
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_subscription) -> ()

let yojson_of_monitoring_subscription =
  (function
   | {
       realtime_metrics_subscription_config =
         v_realtime_metrics_subscription_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_realtime_metrics_subscription_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_monitoring_subscription__realtime_metrics_subscription_config)
               v_realtime_metrics_subscription_config
           in
           let bnd = "realtime_metrics_subscription_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : monitoring_subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_subscription

[@@@deriving.end]

type aws_cloudfront_monitoring_subscription = {
  distribution_id : string prop;
  id : string prop option; [@option]
  monitoring_subscription : monitoring_subscription list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_monitoring_subscription) -> ()

let yojson_of_aws_cloudfront_monitoring_subscription =
  (function
   | {
       distribution_id = v_distribution_id;
       id = v_id;
       monitoring_subscription = v_monitoring_subscription;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_monitoring_subscription then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monitoring_subscription)
               v_monitoring_subscription
           in
           let bnd = "monitoring_subscription", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_distribution_id
         in
         ("distribution_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_monitoring_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_monitoring_subscription

[@@@deriving.end]

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

type t = {
  tf_name : string;
  distribution_id : string prop;
  id : string prop;
}

let make ?id ~distribution_id ~monitoring_subscription __id =
  let __type = "aws_cloudfront_monitoring_subscription" in
  let __attrs =
    ({
       tf_name = __id;
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
