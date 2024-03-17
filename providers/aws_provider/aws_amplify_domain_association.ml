(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_amplify_domain_association__sub_domain = {
  branch_name : string prop;  (** branch_name *)
  dns_record : string prop;  (** dns_record *)
  prefix : string prop;  (** prefix *)
  verified : bool prop;  (** verified *)
}
[@@deriving yojson_of]
(** aws_amplify_domain_association__sub_domain *)

type aws_amplify_domain_association = {
  app_id : string prop;  (** app_id *)
  domain_name : string prop;  (** domain_name *)
  enable_auto_sub_domain : bool prop option; [@option]
      (** enable_auto_sub_domain *)
  id : string prop option; [@option]  (** id *)
  wait_for_verification : bool prop option; [@option]
      (** wait_for_verification *)
  sub_domain : aws_amplify_domain_association__sub_domain list;
}
[@@deriving yojson_of]
(** aws_amplify_domain_association *)

let aws_amplify_domain_association ?enable_auto_sub_domain ?id
    ?wait_for_verification ~app_id ~domain_name ~sub_domain
    __resource_id =
  let __resource_type = "aws_amplify_domain_association" in
  let __resource =
    {
      app_id;
      domain_name;
      enable_auto_sub_domain;
      id;
      wait_for_verification;
      sub_domain;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_amplify_domain_association __resource);
  ()
