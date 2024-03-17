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

let aws_vpc_network_performance_metric_subscription ?id ?metric
    ?statistic ~destination ~source __resource_id =
  let __resource_type =
    "aws_vpc_network_performance_metric_subscription"
  in
  let __resource = { destination; id; metric; source; statistic } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_network_performance_metric_subscription
       __resource);
  ()
