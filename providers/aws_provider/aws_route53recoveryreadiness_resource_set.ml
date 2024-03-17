(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__nlb_resource = {
  arn : string option; [@option]  (** arn *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__nlb_resource *)

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__r53_resource = {
  domain_name : string option; [@option]  (** domain_name *)
  record_set_id : string option; [@option]  (** record_set_id *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__r53_resource *)

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource = {
  nlb_resource :
    aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__nlb_resource
    list;
  r53_resource :
    aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__r53_resource
    list;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource *)

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource = {
  domain_name : string;  (** domain_name *)
  hosted_zone_arn : string option; [@option]  (** hosted_zone_arn *)
  record_set_id : string option; [@option]  (** record_set_id *)
  record_type : string option; [@option]  (** record_type *)
  target_resource :
    aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource
    list;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__resources__dns_target_resource *)

type aws_route53recoveryreadiness_resource_set__resources = {
  component_id : string;  (** component_id *)
  readiness_scopes : string list option; [@option]
      (** readiness_scopes *)
  resource_arn : string option; [@option]  (** resource_arn *)
  dns_target_resource :
    aws_route53recoveryreadiness_resource_set__resources__dns_target_resource
    list;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__resources *)

type aws_route53recoveryreadiness_resource_set__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__timeouts *)

type aws_route53recoveryreadiness_resource_set = {
  id : string option; [@option]  (** id *)
  resource_set_name : string;  (** resource_set_name *)
  resource_set_type : string;  (** resource_set_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  resources :
    aws_route53recoveryreadiness_resource_set__resources list;
  timeouts :
    aws_route53recoveryreadiness_resource_set__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set *)

let aws_route53recoveryreadiness_resource_set ?id ?tags ?tags_all
    ?timeouts ~resource_set_name ~resource_set_type ~resources
    __resource_id =
  let __resource_type =
    "aws_route53recoveryreadiness_resource_set"
  in
  let __resource =
    {
      id;
      resource_set_name;
      resource_set_type;
      tags;
      tags_all;
      resources;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoveryreadiness_resource_set __resource);
  ()
