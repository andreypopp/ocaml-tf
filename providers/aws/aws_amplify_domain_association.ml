(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type sub_domain = {
  branch_name : string prop;  (** branch_name *)
  prefix : string prop;  (** prefix *)
}
[@@deriving yojson_of]
(** sub_domain *)

type aws_amplify_domain_association = {
  app_id : string prop;  (** app_id *)
  domain_name : string prop;  (** domain_name *)
  enable_auto_sub_domain : bool prop option; [@option]
      (** enable_auto_sub_domain *)
  id : string prop option; [@option]  (** id *)
  wait_for_verification : bool prop option; [@option]
      (** wait_for_verification *)
  sub_domain : sub_domain list;
}
[@@deriving yojson_of]
(** aws_amplify_domain_association *)

let sub_domain ~branch_name ~prefix () : sub_domain =
  { branch_name; prefix }

let aws_amplify_domain_association ?enable_auto_sub_domain ?id
    ?wait_for_verification ~app_id ~domain_name ~sub_domain () :
    aws_amplify_domain_association =
  {
    app_id;
    domain_name;
    enable_auto_sub_domain;
    id;
    wait_for_verification;
    sub_domain;
  }

type t = {
  app_id : string prop;
  arn : string prop;
  certificate_verification_dns_record : string prop;
  domain_name : string prop;
  enable_auto_sub_domain : bool prop;
  id : string prop;
  wait_for_verification : bool prop;
}

let register ?tf_module ?enable_auto_sub_domain ?id
    ?wait_for_verification ~app_id ~domain_name ~sub_domain
    __resource_id =
  let __resource_type = "aws_amplify_domain_association" in
  let __resource =
    aws_amplify_domain_association ?enable_auto_sub_domain ?id
      ?wait_for_verification ~app_id ~domain_name ~sub_domain ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_amplify_domain_association __resource);
  let __resource_attributes =
    ({
       app_id = Prop.computed __resource_type __resource_id "app_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       certificate_verification_dns_record =
         Prop.computed __resource_type __resource_id
           "certificate_verification_dns_record";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       enable_auto_sub_domain =
         Prop.computed __resource_type __resource_id
           "enable_auto_sub_domain";
       id = Prop.computed __resource_type __resource_id "id";
       wait_for_verification =
         Prop.computed __resource_type __resource_id
           "wait_for_verification";
     }
      : t)
  in
  __resource_attributes
