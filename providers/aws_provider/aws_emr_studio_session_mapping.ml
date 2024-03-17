(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emr_studio_session_mapping = {
  id : string option; [@option]  (** id *)
  identity_id : string option; [@option]  (** identity_id *)
  identity_name : string option; [@option]  (** identity_name *)
  identity_type : string;  (** identity_type *)
  session_policy_arn : string;  (** session_policy_arn *)
  studio_id : string;  (** studio_id *)
}
[@@deriving yojson_of]
(** aws_emr_studio_session_mapping *)

let aws_emr_studio_session_mapping ?id ?identity_id ?identity_name
    ~identity_type ~session_policy_arn ~studio_id __resource_id =
  let __resource_type = "aws_emr_studio_session_mapping" in
  let __resource =
    {
      id;
      identity_id;
      identity_name;
      identity_type;
      session_policy_arn;
      studio_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_studio_session_mapping __resource);
  ()
