(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route53_traffic_policy_instance = {
  hosted_zone_id : string;  (** hosted_zone_id *)
  name : string;  (** name *)
  traffic_policy_id : string;  (** traffic_policy_id *)
  traffic_policy_version : float;  (** traffic_policy_version *)
  ttl : float;  (** ttl *)
}
[@@deriving yojson_of]
(** aws_route53_traffic_policy_instance *)

let aws_route53_traffic_policy_instance ~hosted_zone_id ~name
    ~traffic_policy_id ~traffic_policy_version ~ttl __resource_id =
  let __resource_type = "aws_route53_traffic_policy_instance" in
  let __resource =
    {
      hosted_zone_id;
      name;
      traffic_policy_id;
      traffic_policy_version;
      ttl;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_traffic_policy_instance __resource);
  ()
