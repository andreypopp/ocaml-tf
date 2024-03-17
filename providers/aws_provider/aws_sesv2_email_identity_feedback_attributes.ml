(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sesv2_email_identity_feedback_attributes = {
  email_forwarding_enabled : bool option; [@option]
      (** email_forwarding_enabled *)
  email_identity : string;  (** email_identity *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity_feedback_attributes *)

let aws_sesv2_email_identity_feedback_attributes
    ?email_forwarding_enabled ~email_identity __resource_id =
  let __resource_type =
    "aws_sesv2_email_identity_feedback_attributes"
  in
  let __resource = { email_forwarding_enabled; email_identity } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_email_identity_feedback_attributes
       __resource);
  ()
