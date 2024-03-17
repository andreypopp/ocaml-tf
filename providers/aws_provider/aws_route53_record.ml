(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_record__alias = {
  evaluate_target_health : bool prop;  (** evaluate_target_health *)
  name : string prop;  (** name *)
  zone_id : string prop;  (** zone_id *)
}
[@@deriving yojson_of]
(** aws_route53_record__alias *)

type aws_route53_record__cidr_routing_policy = {
  collection_id : string prop;  (** collection_id *)
  location_name : string prop;  (** location_name *)
}
[@@deriving yojson_of]
(** aws_route53_record__cidr_routing_policy *)

type aws_route53_record__failover_routing_policy = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_route53_record__failover_routing_policy *)

type aws_route53_record__geolocation_routing_policy = {
  continent : string prop option; [@option]  (** continent *)
  country : string prop option; [@option]  (** country *)
  subdivision : string prop option; [@option]  (** subdivision *)
}
[@@deriving yojson_of]
(** aws_route53_record__geolocation_routing_policy *)

type aws_route53_record__geoproximity_routing_policy__coordinates = {
  latitude : string prop;  (** latitude *)
  longitude : string prop;  (** longitude *)
}
[@@deriving yojson_of]
(** aws_route53_record__geoproximity_routing_policy__coordinates *)

type aws_route53_record__geoproximity_routing_policy = {
  aws_region : string prop option; [@option]  (** aws_region *)
  bias : float prop option; [@option]  (** bias *)
  local_zone_group : string prop option; [@option]
      (** local_zone_group *)
  coordinates :
    aws_route53_record__geoproximity_routing_policy__coordinates list;
}
[@@deriving yojson_of]
(** aws_route53_record__geoproximity_routing_policy *)

type aws_route53_record__latency_routing_policy = {
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** aws_route53_record__latency_routing_policy *)

type aws_route53_record__weighted_routing_policy = {
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** aws_route53_record__weighted_routing_policy *)

type aws_route53_record = {
  allow_overwrite : bool prop option; [@option]
      (** allow_overwrite *)
  health_check_id : string prop option; [@option]
      (** health_check_id *)
  id : string prop option; [@option]  (** id *)
  multivalue_answer_routing_policy : bool prop option; [@option]
      (** multivalue_answer_routing_policy *)
  name : string prop;  (** name *)
  records : string prop list option; [@option]  (** records *)
  set_identifier : string prop option; [@option]
      (** set_identifier *)
  ttl : float prop option; [@option]  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
  zone_id : string prop;  (** zone_id *)
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

let aws_route53_record ?allow_overwrite ?health_check_id ?id
    ?multivalue_answer_routing_policy ?records ?set_identifier ?ttl
    ~name ~type_ ~zone_id ~alias ~cidr_routing_policy
    ~failover_routing_policy ~geolocation_routing_policy
    ~geoproximity_routing_policy ~latency_routing_policy
    ~weighted_routing_policy __resource_id =
  let __resource_type = "aws_route53_record" in
  let __resource =
    {
      allow_overwrite;
      health_check_id;
      id;
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
