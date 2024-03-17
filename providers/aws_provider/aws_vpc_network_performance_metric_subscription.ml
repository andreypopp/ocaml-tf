(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpc_network_performance_metric_subscription = {
  destination : string;  (** destination *)
  metric : string option; [@option]  (** metric *)
  source : string;  (** source *)
  statistic : string option; [@option]  (** statistic *)
}
[@@deriving yojson_of]
(** aws_vpc_network_performance_metric_subscription *)

let aws_vpc_network_performance_metric_subscription ?metric
    ?statistic ~destination ~source __resource_id =
  let __resource_type =
    "aws_vpc_network_performance_metric_subscription"
  in
  let __resource = { destination; metric; source; statistic } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_network_performance_metric_subscription
       __resource);
  ()
