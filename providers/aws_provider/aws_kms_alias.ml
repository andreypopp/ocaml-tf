(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_kms_alias = { target_key_id : string  (** target_key_id *) }
[@@deriving yojson_of]
(** aws_kms_alias *)

let aws_kms_alias ~target_key_id __resource_id =
  let __resource_type = "aws_kms_alias" in
  let __resource = { target_key_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_alias __resource);
  ()