(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_continuous_deployment_policy__staging_distribution_dns_names = {
  items : string list option; [@option]  (** items *)
  quantity : float;  (** quantity *)
}
[@@deriving yojson_of]
(** aws_cloudfront_continuous_deployment_policy__staging_distribution_dns_names *)

type aws_cloudfront_continuous_deployment_policy__traffic_config__single_header_config = {
  header : string;  (** header *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudfront_continuous_deployment_policy__traffic_config__single_header_config *)

type aws_cloudfront_continuous_deployment_policy__traffic_config__single_weight_config__session_stickiness_config = {
  idle_ttl : float;  (** idle_ttl *)
  maximum_ttl : float;  (** maximum_ttl *)
}
[@@deriving yojson_of]
(** aws_cloudfront_continuous_deployment_policy__traffic_config__single_weight_config__session_stickiness_config *)

type aws_cloudfront_continuous_deployment_policy__traffic_config__single_weight_config = {
  weight : float;  (** weight *)
  session_stickiness_config :
    aws_cloudfront_continuous_deployment_policy__traffic_config__single_weight_config__session_stickiness_config
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_continuous_deployment_policy__traffic_config__single_weight_config *)

type aws_cloudfront_continuous_deployment_policy__traffic_config = {
  type_ : string; [@key "type"]  (** type *)
  single_header_config :
    aws_cloudfront_continuous_deployment_policy__traffic_config__single_header_config
    list;
  single_weight_config :
    aws_cloudfront_continuous_deployment_policy__traffic_config__single_weight_config
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_continuous_deployment_policy__traffic_config *)

type aws_cloudfront_continuous_deployment_policy = {
  enabled : bool;  (** enabled *)
  staging_distribution_dns_names :
    aws_cloudfront_continuous_deployment_policy__staging_distribution_dns_names
    list;
  traffic_config :
    aws_cloudfront_continuous_deployment_policy__traffic_config list;
}
[@@deriving yojson_of]
(** aws_cloudfront_continuous_deployment_policy *)

let aws_cloudfront_continuous_deployment_policy ~enabled
    ~staging_distribution_dns_names ~traffic_config __resource_id =
  let __resource_type =
    "aws_cloudfront_continuous_deployment_policy"
  in
  let __resource =
    { enabled; staging_distribution_dns_names; traffic_config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_continuous_deployment_policy __resource);
  ()
