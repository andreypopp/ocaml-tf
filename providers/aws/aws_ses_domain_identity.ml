(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_domain_identity = {
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ses_domain_identity *)

let aws_ses_domain_identity ?id ~domain () : aws_ses_domain_identity
    =
  { domain; id }

type t = {
  arn : string prop;
  domain : string prop;
  id : string prop;
  verification_token : string prop;
}

let register ?tf_module ?id ~domain __resource_id =
  let __resource_type = "aws_ses_domain_identity" in
  let __resource = aws_ses_domain_identity ?id ~domain () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_domain_identity __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       domain = Prop.computed __resource_type __resource_id "domain";
       id = Prop.computed __resource_type __resource_id "id";
       verification_token =
         Prop.computed __resource_type __resource_id
           "verification_token";
     }
      : t)
  in
  __resource_attributes
