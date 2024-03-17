(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_domain_identity = {
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ses_domain_identity *)

let aws_ses_domain_identity ?id ~domain __resource_id =
  let __resource_type = "aws_ses_domain_identity" in
  let __resource = { domain; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_domain_identity __resource);
  ()
