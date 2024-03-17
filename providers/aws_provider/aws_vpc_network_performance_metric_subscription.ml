(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_network_performance_metric_subscription = {
  destination : string prop;  (** destination *)
  id : string prop option; [@option]  (** id *)
  metric : string prop option; [@option]  (** metric *)
  source : string prop;  (** source *)
  statistic : string prop option; [@option]  (** statistic *)
}
[@@deriving yojson_of]
(** aws_vpc_network_performance_metric_subscription *)

type t = {
  destination : string prop;
  id : string prop;
  metric : string prop;
  period : string prop;
  source : string prop;
  statistic : string prop;
}

let aws_vpc_network_performance_metric_subscription ?id ?metric
    ?statistic ~destination ~source __resource_id =
  let __resource_type =
    "aws_vpc_network_performance_metric_subscription"
  in
  let __resource =
    ({ destination; id; metric; source; statistic }
      : aws_vpc_network_performance_metric_subscription)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_network_performance_metric_subscription
       __resource);
  let __resource_attributes =
    ({
       destination =
         Prop.computed __resource_type __resource_id "destination";
       id = Prop.computed __resource_type __resource_id "id";
       metric = Prop.computed __resource_type __resource_id "metric";
       period = Prop.computed __resource_type __resource_id "period";
       source = Prop.computed __resource_type __resource_id "source";
       statistic =
         Prop.computed __resource_type __resource_id "statistic";
     }
      : t)
  in
  __resource_attributes
