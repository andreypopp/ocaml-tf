(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_traffic_policy_instance = {
  hosted_zone_id : string prop;  (** hosted_zone_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  traffic_policy_id : string prop;  (** traffic_policy_id *)
  traffic_policy_version : float prop;  (** traffic_policy_version *)
  ttl : float prop;  (** ttl *)
}
[@@deriving yojson_of]
(** aws_route53_traffic_policy_instance *)

type t = {
  hosted_zone_id : string prop;
  id : string prop;
  name : string prop;
  traffic_policy_id : string prop;
  traffic_policy_version : float prop;
  ttl : float prop;
}

let aws_route53_traffic_policy_instance ?id ~hosted_zone_id ~name
    ~traffic_policy_id ~traffic_policy_version ~ttl __resource_id =
  let __resource_type = "aws_route53_traffic_policy_instance" in
  let __resource =
    ({
       hosted_zone_id;
       id;
       name;
       traffic_policy_id;
       traffic_policy_version;
       ttl;
     }
      : aws_route53_traffic_policy_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_traffic_policy_instance __resource);
  let __resource_attributes =
    ({
       hosted_zone_id =
         Prop.computed __resource_type __resource_id "hosted_zone_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       traffic_policy_id =
         Prop.computed __resource_type __resource_id
           "traffic_policy_id";
       traffic_policy_version =
         Prop.computed __resource_type __resource_id
           "traffic_policy_version";
       ttl = Prop.computed __resource_type __resource_id "ttl";
     }
      : t)
  in
  __resource_attributes
