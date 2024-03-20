(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_network_performance_metric_subscription = {
  destination : string prop;  (** destination *)
  id : string prop option; [@option]  (** id *)
  metric : string prop option; [@option]  (** metric *)
  source : string prop;  (** source *)
  statistic : string prop option; [@option]  (** statistic *)
}
[@@deriving yojson_of]
(** aws_vpc_network_performance_metric_subscription *)

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
