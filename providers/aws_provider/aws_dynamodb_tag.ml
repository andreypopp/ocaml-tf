(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dynamodb_tag = {
  id : string option; [@option]  (** id *)
  key : string;  (** key *)
  resource_arn : string;  (** resource_arn *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_dynamodb_tag *)

let aws_dynamodb_tag ?id ~key ~resource_arn ~value __resource_id =
  let __resource_type = "aws_dynamodb_tag" in
  let __resource = { id; key; resource_arn; value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_tag __resource);
  ()
