(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type alias = {
  evaluate_target_health : bool prop;  (** evaluate_target_health *)
  name : string prop;  (** name *)
  zone_id : string prop;  (** zone_id *)
}
[@@deriving yojson_of]
(** alias *)

type cidr_routing_policy = {
  collection_id : string prop;  (** collection_id *)
  location_name : string prop;  (** location_name *)
}
[@@deriving yojson_of]
(** cidr_routing_policy *)

type failover_routing_policy = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** failover_routing_policy *)

type geolocation_routing_policy = {
  continent : string prop option; [@option]  (** continent *)
  country : string prop option; [@option]  (** country *)
  subdivision : string prop option; [@option]  (** subdivision *)
}
[@@deriving yojson_of]
(** geolocation_routing_policy *)

type geoproximity_routing_policy__coordinates = {
  latitude : string prop;  (** latitude *)
  longitude : string prop;  (** longitude *)
}
[@@deriving yojson_of]
(** geoproximity_routing_policy__coordinates *)

type geoproximity_routing_policy = {
  aws_region : string prop option; [@option]  (** aws_region *)
  bias : float prop option; [@option]  (** bias *)
  local_zone_group : string prop option; [@option]
      (** local_zone_group *)
  coordinates : geoproximity_routing_policy__coordinates list;
}
[@@deriving yojson_of]
(** geoproximity_routing_policy *)

type latency_routing_policy = { region : string prop  (** region *) }
[@@deriving yojson_of]
(** latency_routing_policy *)

type weighted_routing_policy = { weight : float prop  (** weight *) }
[@@deriving yojson_of]
(** weighted_routing_policy *)

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
  alias : alias list;
  cidr_routing_policy : cidr_routing_policy list;
  failover_routing_policy : failover_routing_policy list;
  geolocation_routing_policy : geolocation_routing_policy list;
  geoproximity_routing_policy : geoproximity_routing_policy list;
  latency_routing_policy : latency_routing_policy list;
  weighted_routing_policy : weighted_routing_policy list;
}
[@@deriving yojson_of]
(** aws_route53_record *)

let alias ~evaluate_target_health ~name ~zone_id () : alias =
  { evaluate_target_health; name; zone_id }

let cidr_routing_policy ~collection_id ~location_name () :
    cidr_routing_policy =
  { collection_id; location_name }

let failover_routing_policy ~type_ () : failover_routing_policy =
  { type_ }

let geolocation_routing_policy ?continent ?country ?subdivision () :
    geolocation_routing_policy =
  { continent; country; subdivision }

let geoproximity_routing_policy__coordinates ~latitude ~longitude ()
    : geoproximity_routing_policy__coordinates =
  { latitude; longitude }

let geoproximity_routing_policy ?aws_region ?bias ?local_zone_group
    ~coordinates () : geoproximity_routing_policy =
  { aws_region; bias; local_zone_group; coordinates }

let latency_routing_policy ~region () : latency_routing_policy =
  { region }

let weighted_routing_policy ~weight () : weighted_routing_policy =
  { weight }

let aws_route53_record ?allow_overwrite ?health_check_id ?id
    ?multivalue_answer_routing_policy ?records ?set_identifier ?ttl
    ~name ~type_ ~zone_id ~alias ~cidr_routing_policy
    ~failover_routing_policy ~geolocation_routing_policy
    ~geoproximity_routing_policy ~latency_routing_policy
    ~weighted_routing_policy () : aws_route53_record =
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

type t = {
  allow_overwrite : bool prop;
  fqdn : string prop;
  health_check_id : string prop;
  id : string prop;
  multivalue_answer_routing_policy : bool prop;
  name : string prop;
  records : string list prop;
  set_identifier : string prop;
  ttl : float prop;
  type_ : string prop;
  zone_id : string prop;
}

let register ?tf_module ?allow_overwrite ?health_check_id ?id
    ?multivalue_answer_routing_policy ?records ?set_identifier ?ttl
    ~name ~type_ ~zone_id ~alias ~cidr_routing_policy
    ~failover_routing_policy ~geolocation_routing_policy
    ~geoproximity_routing_policy ~latency_routing_policy
    ~weighted_routing_policy __resource_id =
  let __resource_type = "aws_route53_record" in
  let __resource =
    aws_route53_record ?allow_overwrite ?health_check_id ?id
      ?multivalue_answer_routing_policy ?records ?set_identifier ?ttl
      ~name ~type_ ~zone_id ~alias ~cidr_routing_policy
      ~failover_routing_policy ~geolocation_routing_policy
      ~geoproximity_routing_policy ~latency_routing_policy
      ~weighted_routing_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_record __resource);
  let __resource_attributes =
    ({
       allow_overwrite =
         Prop.computed __resource_type __resource_id
           "allow_overwrite";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       health_check_id =
         Prop.computed __resource_type __resource_id
           "health_check_id";
       id = Prop.computed __resource_type __resource_id "id";
       multivalue_answer_routing_policy =
         Prop.computed __resource_type __resource_id
           "multivalue_answer_routing_policy";
       name = Prop.computed __resource_type __resource_id "name";
       records =
         Prop.computed __resource_type __resource_id "records";
       set_identifier =
         Prop.computed __resource_type __resource_id "set_identifier";
       ttl = Prop.computed __resource_type __resource_id "ttl";
       type_ = Prop.computed __resource_type __resource_id "type";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
