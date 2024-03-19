(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type staging_distribution_dns_names = {
  items : string prop list option; [@option]  (** items *)
  quantity : float prop;  (** quantity *)
}
[@@deriving yojson_of]
(** staging_distribution_dns_names *)

type traffic_config__single_header_config = {
  header : string prop;  (** header *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** traffic_config__single_header_config *)

type traffic_config__single_weight_config__session_stickiness_config = {
  idle_ttl : float prop;  (** idle_ttl *)
  maximum_ttl : float prop;  (** maximum_ttl *)
}
[@@deriving yojson_of]
(** traffic_config__single_weight_config__session_stickiness_config *)

type traffic_config__single_weight_config = {
  weight : float prop;  (** weight *)
  session_stickiness_config :
    traffic_config__single_weight_config__session_stickiness_config
    list;
}
[@@deriving yojson_of]
(** traffic_config__single_weight_config *)

type traffic_config = {
  type_ : string prop; [@key "type"]  (** type *)
  single_header_config : traffic_config__single_header_config list;
  single_weight_config : traffic_config__single_weight_config list;
}
[@@deriving yojson_of]
(** traffic_config *)

type aws_cloudfront_continuous_deployment_policy = {
  enabled : bool prop;  (** enabled *)
  staging_distribution_dns_names :
    staging_distribution_dns_names list;
  traffic_config : traffic_config list;
}
[@@deriving yojson_of]
(** aws_cloudfront_continuous_deployment_policy *)

let staging_distribution_dns_names ?items ~quantity () :
    staging_distribution_dns_names =
  { items; quantity }

let traffic_config__single_header_config ~header ~value () :
    traffic_config__single_header_config =
  { header; value }

let traffic_config__single_weight_config__session_stickiness_config
    ~idle_ttl ~maximum_ttl () :
    traffic_config__single_weight_config__session_stickiness_config =
  { idle_ttl; maximum_ttl }

let traffic_config__single_weight_config ~weight
    ~session_stickiness_config () :
    traffic_config__single_weight_config =
  { weight; session_stickiness_config }

let traffic_config ~type_ ~single_header_config ~single_weight_config
    () : traffic_config =
  { type_; single_header_config; single_weight_config }

let aws_cloudfront_continuous_deployment_policy ~enabled
    ~staging_distribution_dns_names ~traffic_config () :
    aws_cloudfront_continuous_deployment_policy =
  { enabled; staging_distribution_dns_names; traffic_config }

type t = {
  enabled : bool prop;
  etag : string prop;
  id : string prop;
  last_modified_time : string prop;
}

let register ?tf_module ~enabled ~staging_distribution_dns_names
    ~traffic_config __resource_id =
  let __resource_type =
    "aws_cloudfront_continuous_deployment_policy"
  in
  let __resource =
    aws_cloudfront_continuous_deployment_policy ~enabled
      ~staging_distribution_dns_names ~traffic_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_continuous_deployment_policy __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified_time =
         Prop.computed __resource_type __resource_id
           "last_modified_time";
     }
      : t)
  in
  __resource_attributes
