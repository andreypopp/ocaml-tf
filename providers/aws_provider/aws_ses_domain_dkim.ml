(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_domain_dkim = {
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ses_domain_dkim *)

type t = {
  dkim_tokens : string list prop;
  domain : string prop;
  id : string prop;
}

let aws_ses_domain_dkim ?id ~domain __resource_id =
  let __resource_type = "aws_ses_domain_dkim" in
  let __resource = ({ domain; id } : aws_ses_domain_dkim) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_domain_dkim __resource);
  let __resource_attributes =
    ({
       dkim_tokens =
         Prop.computed __resource_type __resource_id "dkim_tokens";
       domain = Prop.computed __resource_type __resource_id "domain";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
