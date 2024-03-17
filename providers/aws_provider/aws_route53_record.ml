(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_record__alias = {
  evaluate_target_health : bool;  (** evaluate_target_health *)
  name : string;  (** name *)
  zone_id : string;  (** zone_id *)
}
[@@deriving yojson_of]
(** aws_route53_record__alias *)

type aws_route53_record__cidr_routing_policy = {
  collection_id : string;  (** collection_id *)
  location_name : string;  (** location_name *)
}
[@@deriving yojson_of]
(** aws_route53_record__cidr_routing_policy *)

type aws_route53_record__failover_routing_policy = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_route53_record__failover_routing_policy *)

type aws_route53_record__geolocation_routing_policy = {
  continent : string option; [@option]  (** continent *)
  country : string option; [@option]  (** country *)
  subdivision : string option; [@option]  (** subdivision *)
}
[@@deriving yojson_of]
(** aws_route53_record__geolocation_routing_policy *)

type aws_route53_record__geoproximity_routing_policy__coordinates = {
  latitude : string;  (** latitude *)
  longitude : string;  (** longitude *)
}
[@@deriving yojson_of]
(** aws_route53_record__geoproximity_routing_policy__coordinates *)

type aws_route53_record__geoproximity_routing_policy = {
  aws_region : string option; [@option]  (** aws_region *)
  bias : float option; [@option]  (** bias *)
  local_zone_group : string option; [@option]
      (** local_zone_group *)
  coordinates :
    aws_route53_record__geoproximity_routing_policy__coordinates list;
}
[@@deriving yojson_of]
(** aws_route53_record__geoproximity_routing_policy *)

type aws_route53_record__latency_routing_policy = {
  region : string;  (** region *)
}
[@@deriving yojson_of]
(** aws_route53_record__latency_routing_policy *)

type aws_route53_record__weighted_routing_policy = {
  weight : float;  (** weight *)
}
[@@deriving yojson_of]
(** aws_route53_record__weighted_routing_policy *)

type aws_route53_record = {
  health_check_id : string option; [@option]  (** health_check_id *)
  multivalue_answer_routing_policy : bool option; [@option]
      (** multivalue_answer_routing_policy *)
  name : string;  (** name *)
  records : string list option; [@option]  (** records *)
  set_identifier : string option; [@option]  (** set_identifier *)
  ttl : float option; [@option]  (** ttl *)
  type_ : string; [@key "type"]  (** type *)
  zone_id : string;  (** zone_id *)
  alias : aws_route53_record__alias list;
  cidr_routing_policy : aws_route53_record__cidr_routing_policy list;
  failover_routing_policy :
    aws_route53_record__failover_routing_policy list;
  geolocation_routing_policy :
    aws_route53_record__geolocation_routing_policy list;
  geoproximity_routing_policy :
    aws_route53_record__geoproximity_routing_policy list;
  latency_routing_policy :
    aws_route53_record__latency_routing_policy list;
  weighted_routing_policy :
    aws_route53_record__weighted_routing_policy list;
}
[@@deriving yojson_of]
(** aws_route53_record *)

let aws_route53_record ?health_check_id
    ?multivalue_answer_routing_policy ?records ?set_identifier ?ttl
    ~name ~type_ ~zone_id ~alias ~cidr_routing_policy
    ~failover_routing_policy ~geolocation_routing_policy
    ~geoproximity_routing_policy ~latency_routing_policy
    ~weighted_routing_policy __resource_id =
  let __resource_type = "aws_route53_record" in
  let __resource =
    {
      health_check_id;
      multivalue_answer_routing_policy;
      name;
      records;
      set_identifier;
      ttl;
      type_;
      zone_id;
      alias;
      cidr_routing_policy;
      failover_routing_policy;
      geolocation_routing_policy;
      geoproximity_routing_policy;
      latency_routing_policy;
      weighted_routing_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_record __resource);
  ()
