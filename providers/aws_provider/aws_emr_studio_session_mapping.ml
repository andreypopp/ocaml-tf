(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emr_studio_session_mapping = {
  identity_type : string;  (** identity_type *)
  session_policy_arn : string;  (** session_policy_arn *)
  studio_id : string;  (** studio_id *)
}
[@@deriving yojson_of]
(** aws_emr_studio_session_mapping *)

let aws_emr_studio_session_mapping ~identity_type ~session_policy_arn
    ~studio_id __resource_id =
  let __resource_type = "aws_emr_studio_session_mapping" in
  let __resource =
    { identity_type; session_policy_arn; studio_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_studio_session_mapping __resource);
  ()
