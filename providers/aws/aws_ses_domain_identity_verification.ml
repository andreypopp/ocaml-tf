(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_domain_identity_verification__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_ses_domain_identity_verification__timeouts *)

type aws_ses_domain_identity_verification = {
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
  timeouts : aws_ses_domain_identity_verification__timeouts option;
}
[@@deriving yojson_of]
(** aws_ses_domain_identity_verification *)

type t = {
  arn : string prop;
  domain : string prop;
  id : string prop;
}

let aws_ses_domain_identity_verification ?id ?timeouts ~domain
    __resource_id =
  let __resource_type = "aws_ses_domain_identity_verification" in
  let __resource =
    ({ domain; id; timeouts } : aws_ses_domain_identity_verification)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_domain_identity_verification __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       domain = Prop.computed __resource_type __resource_id "domain";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
