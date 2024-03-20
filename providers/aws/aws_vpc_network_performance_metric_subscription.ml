(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_network_performance_metric_subscription = {
  destination : string prop;
  id : string prop option; [@option]
  metric : string prop option; [@option]
  source : string prop;
  statistic : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_vpc_network_performance_metric_subscription) -> ()

let yojson_of_aws_vpc_network_performance_metric_subscription =
  (function
   | {
       destination = v_destination;
       id = v_id;
       metric = v_metric;
       source = v_source;
       statistic = v_statistic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_statistic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statistic", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         match v_metric with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric", arg in
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
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpc_network_performance_metric_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_network_performance_metric_subscription

[@@@deriving.end]

let aws_vpc_network_performance_metric_subscription ?id ?metric
    ?statistic ~destination ~source () :
    aws_vpc_network_performance_metric_subscription =
  { destination; id; metric; source; statistic }

type t = {
  destination : string prop;
  id : string prop;
  metric : string prop;
  period : string prop;
  source : string prop;
  statistic : string prop;
}

let make ?id ?metric ?statistic ~destination ~source __id =
  let __type = "aws_vpc_network_performance_metric_subscription" in
  let __attrs =
    ({
       destination = Prop.computed __type __id "destination";
       id = Prop.computed __type __id "id";
       metric = Prop.computed __type __id "metric";
       period = Prop.computed __type __id "period";
       source = Prop.computed __type __id "source";
       statistic = Prop.computed __type __id "statistic";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_network_performance_metric_subscription
        (aws_vpc_network_performance_metric_subscription ?id ?metric
           ?statistic ~destination ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metric ?statistic ~destination ~source
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metric ?statistic ~destination ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
