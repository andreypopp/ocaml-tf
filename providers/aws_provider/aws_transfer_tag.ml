(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_tag = {
  key : string;  (** key *)
  resource_arn : string;  (** resource_arn *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_transfer_tag *)

let aws_transfer_tag ~key ~resource_arn ~value __resource_id =
  let __resource_type = "aws_transfer_tag" in
  let __resource = { key; resource_arn; value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_tag __resource);
  ()
