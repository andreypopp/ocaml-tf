(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type resources__dns_target_resource__target_resource__nlb_resource = {
  arn : string prop option; [@option]  (** arn *)
}
[@@deriving yojson_of]
(** resources__dns_target_resource__target_resource__nlb_resource *)

type resources__dns_target_resource__target_resource__r53_resource = {
  domain_name : string prop option; [@option]  (** domain_name *)
  record_set_id : string prop option; [@option]  (** record_set_id *)
}
[@@deriving yojson_of]
(** resources__dns_target_resource__target_resource__r53_resource *)

type resources__dns_target_resource__target_resource = {
  nlb_resource :
    resources__dns_target_resource__target_resource__nlb_resource
    list;
  r53_resource :
    resources__dns_target_resource__target_resource__r53_resource
    list;
}
[@@deriving yojson_of]
(** resources__dns_target_resource__target_resource *)

type resources__dns_target_resource = {
  domain_name : string prop;  (** domain_name *)
  hosted_zone_arn : string prop option; [@option]
      (** hosted_zone_arn *)
  record_set_id : string prop option; [@option]  (** record_set_id *)
  record_type : string prop option; [@option]  (** record_type *)
  target_resource :
    resources__dns_target_resource__target_resource list;
}
[@@deriving yojson_of]
(** resources__dns_target_resource *)

type resources = {
  readiness_scopes : string prop list option; [@option]
      (** readiness_scopes *)
  resource_arn : string prop option; [@option]  (** resource_arn *)
  dns_target_resource : resources__dns_target_resource list;
}
[@@deriving yojson_of]
(** resources *)

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_route53recoveryreadiness_resource_set = {
  id : string prop option; [@option]  (** id *)
  resource_set_name : string prop;  (** resource_set_name *)
  resource_set_type : string prop;  (** resource_set_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  resources : resources list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_resource_set *)

let resources__dns_target_resource__target_resource__nlb_resource
    ?arn () :
    resources__dns_target_resource__target_resource__nlb_resource =
  { arn }

let resources__dns_target_resource__target_resource__r53_resource
    ?domain_name ?record_set_id () :
    resources__dns_target_resource__target_resource__r53_resource =
  { domain_name; record_set_id }

let resources__dns_target_resource__target_resource ~nlb_resource
    ~r53_resource () :
    resources__dns_target_resource__target_resource =
  { nlb_resource; r53_resource }

let resources__dns_target_resource ?hosted_zone_arn ?record_set_id
    ?record_type ~domain_name ~target_resource () :
    resources__dns_target_resource =
  {
    domain_name;
    hosted_zone_arn;
    record_set_id;
    record_type;
    target_resource;
  }

let resources ?readiness_scopes ?resource_arn ~dns_target_resource ()
    : resources =
  { readiness_scopes; resource_arn; dns_target_resource }

let timeouts ?delete () : timeouts = { delete }

let aws_route53recoveryreadiness_resource_set ?id ?tags ?tags_all
    ?timeouts ~resource_set_name ~resource_set_type ~resources () :
    aws_route53recoveryreadiness_resource_set =
  {
    id;
    resource_set_name;
    resource_set_type;
    tags;
    tags_all;
    resources;
    timeouts;
  }

type t = {
  arn : string prop;
  id : string prop;
  resource_set_name : string prop;
  resource_set_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~resource_set_name ~resource_set_type ~resources __resource_id =
  let __resource_type =
    "aws_route53recoveryreadiness_resource_set"
  in
  let __resource =
    aws_route53recoveryreadiness_resource_set ?id ?tags ?tags_all
      ?timeouts ~resource_set_name ~resource_set_type ~resources ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
