(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ses_domain_dkim = { domain : string  (** domain *) }
[@@deriving yojson_of]
(** aws_ses_domain_dkim *)

let aws_ses_domain_dkim ~domain __resource_id =
  let __resource_type = "aws_ses_domain_dkim" in
  let __resource = { domain } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_domain_dkim __resource);
  ()