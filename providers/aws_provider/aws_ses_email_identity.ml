(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_email_identity = {
  email : string;  (** email *)
  id : string option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ses_email_identity *)

let aws_ses_email_identity ?id ~email __resource_id =
  let __resource_type = "aws_ses_email_identity" in
  let __resource = { email; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_email_identity __resource);
  ()
