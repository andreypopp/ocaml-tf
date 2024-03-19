(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_firewall_domain_list = {
  domains : string prop list option; [@option]  (** domains *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_domain_list *)

let aws_route53_resolver_firewall_domain_list ?domains ?id ?tags
    ?tags_all ~name () : aws_route53_resolver_firewall_domain_list =
  { domains; id; name; tags; tags_all }

type t = {
  arn : string prop;
  domains : string list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?domains ?id ?tags ?tags_all ~name
    __resource_id =
  let __resource_type =
    "aws_route53_resolver_firewall_domain_list"
  in
  let __resource =
    aws_route53_resolver_firewall_domain_list ?domains ?id ?tags
      ?tags_all ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_domain_list __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       domains =
         Prop.computed __resource_type __resource_id "domains";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
