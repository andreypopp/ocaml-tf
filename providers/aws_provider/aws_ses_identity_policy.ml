(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_identity_policy = {
  identity : string;  (** identity *)
  name : string;  (** name *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_ses_identity_policy *)

let aws_ses_identity_policy ~identity ~name ~policy __resource_id =
  let __resource_type = "aws_ses_identity_policy" in
  let __resource = { identity; name; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_identity_policy __resource);
  ()
