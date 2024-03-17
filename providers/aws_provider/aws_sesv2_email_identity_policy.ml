(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sesv2_email_identity_policy = {
  email_identity : string;  (** email_identity *)
  policy : string;  (** policy *)
  policy_name : string;  (** policy_name *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity_policy *)

let aws_sesv2_email_identity_policy ~email_identity ~policy
    ~policy_name __resource_id =
  let __resource_type = "aws_sesv2_email_identity_policy" in
  let __resource = { email_identity; policy; policy_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_email_identity_policy __resource);
  ()
