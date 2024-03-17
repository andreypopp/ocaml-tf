(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_service_specific_credential = {
  id : string prop option; [@option]  (** id *)
  service_name : string prop;  (** service_name *)
  status : string prop option; [@option]  (** status *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_iam_service_specific_credential *)

let aws_iam_service_specific_credential ?id ?status ~service_name
    ~user_name __resource_id =
  let __resource_type = "aws_iam_service_specific_credential" in
  let __resource = { id; service_name; status; user_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_service_specific_credential __resource);
  ()
