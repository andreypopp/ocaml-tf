(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_code_signing_config__allowed_publishers = {
  signing_profile_version_arns : string list;
      (** signing_profile_version_arns *)
}
[@@deriving yojson_of]
(** aws_lambda_code_signing_config__allowed_publishers *)

type aws_lambda_code_signing_config__policies = {
  untrusted_artifact_on_deployment : string;
      (** untrusted_artifact_on_deployment *)
}
[@@deriving yojson_of]
(** aws_lambda_code_signing_config__policies *)

type aws_lambda_code_signing_config = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  allowed_publishers :
    aws_lambda_code_signing_config__allowed_publishers list;
  policies : aws_lambda_code_signing_config__policies list;
}
[@@deriving yojson_of]
(** aws_lambda_code_signing_config *)

let aws_lambda_code_signing_config ?description ?id
    ~allowed_publishers ~policies __resource_id =
  let __resource_type = "aws_lambda_code_signing_config" in
  let __resource =
    { description; id; allowed_publishers; policies }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_code_signing_config __resource);
  ()
