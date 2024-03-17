(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__nlb_resource = {
  arn : string prop option; [@option]  (** arn *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__nlb_resource *)

type aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource__r53_resource = {
  domain_name : string prop option; [@option]  (** domain_name *)
  record_set_id : string prop option; [@option]  (** record_set_id *)
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
  domain_name : string prop;  (** domain_name *)
  hosted_zone_arn : string prop option; [@option]
      (** hosted_zone_arn *)
  record_set_id : string prop option; [@option]  (** record_set_id *)
  record_type : string prop option; [@option]  (** record_type *)
  target_resource :
    aws_route53recoveryreadiness_resource_set__resources__dns_target_resource__target_resource
    list;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__resources__dns_target_resource *)

type aws_route53recoveryreadiness_resource_set__resources = {
  component_id : string prop;  (** component_id *)
  readiness_scopes : string prop list option; [@option]
      (** readiness_scopes *)
  resource_arn : string prop option; [@option]  (** resource_arn *)
  dns_target_resource :
    aws_route53recoveryreadiness_resource_set__resources__dns_target_resource
    list;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__resources *)

type aws_route53recoveryreadiness_resource_set__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set__timeouts *)

type aws_route53recoveryreadiness_resource_set = {
  id : string prop option; [@option]  (** id *)
  resource_set_name : string prop;  (** resource_set_name *)
  resource_set_type : string prop;  (** resource_set_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  resources :
    aws_route53recoveryreadiness_resource_set__resources list;
  timeouts :
    aws_route53recoveryreadiness_resource_set__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set *)

type t = {
  arn : string prop;
  id : string prop;
  resource_set_name : string prop;
  resource_set_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_route53recoveryreadiness_resource_set ?id ?tags ?tags_all
    ?timeouts ~resource_set_name ~resource_set_type ~resources
    __resource_id =
  let __resource_type =
    "aws_route53recoveryreadiness_resource_set"
  in
  let __resource =
    ({
       id;
       resource_set_name;
       resource_set_type;
       tags;
       tags_all;
       resources;
       timeouts;
     }
      : aws_route53recoveryreadiness_resource_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoveryreadiness_resource_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       resource_set_name =
         Prop.computed __resource_type __resource_id
           "resource_set_name";
       resource_set_type =
         Prop.computed __resource_type __resource_id
           "resource_set_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
