(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_signer_signing_profile_permission = {
  action : string;  (** action *)
  principal : string;  (** principal *)
  profile_name : string;  (** profile_name *)
}
[@@deriving yojson_of]
(** aws_signer_signing_profile_permission *)

let aws_signer_signing_profile_permission ~action ~principal
    ~profile_name __resource_id =
  let __resource_type = "aws_signer_signing_profile_permission" in
  let __resource = { action; principal; profile_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_signer_signing_profile_permission __resource);
  ()
