(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_security_token_service_preferences = {
  global_endpoint_token_version : string;
      (** global_endpoint_token_version *)
}
[@@deriving yojson_of]
(** aws_iam_security_token_service_preferences *)

let aws_iam_security_token_service_preferences
    ~global_endpoint_token_version __resource_id =
  let __resource_type =
    "aws_iam_security_token_service_preferences"
  in
  let __resource = { global_endpoint_token_version } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_security_token_service_preferences __resource);
  ()
