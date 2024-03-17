(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_signing_certificate = {
  certificate_body : string;  (** certificate_body *)
  status : string option; [@option]  (** status *)
  user_name : string;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_iam_signing_certificate *)

let aws_iam_signing_certificate ?status ~certificate_body ~user_name
    __resource_id =
  let __resource_type = "aws_iam_signing_certificate" in
  let __resource = { certificate_body; status; user_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_signing_certificate __resource);
  ()
