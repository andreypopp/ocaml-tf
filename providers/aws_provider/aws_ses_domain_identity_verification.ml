(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ses_domain_identity_verification__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_ses_domain_identity_verification__timeouts *)

type aws_ses_domain_identity_verification = {
  domain : string;  (** domain *)
  timeouts : aws_ses_domain_identity_verification__timeouts option;
}
[@@deriving yojson_of]
(** aws_ses_domain_identity_verification *)

let aws_ses_domain_identity_verification ?timeouts ~domain
    __resource_id =
  let __resource_type = "aws_ses_domain_identity_verification" in
  let __resource = { domain; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_domain_identity_verification __resource);
  ()
