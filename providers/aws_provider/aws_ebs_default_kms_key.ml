(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ebs_default_kms_key = { key_arn : string  (** key_arn *) }
[@@deriving yojson_of]
(** aws_ebs_default_kms_key *)

let aws_ebs_default_kms_key ~key_arn __resource_id =
  let __resource_type = "aws_ebs_default_kms_key" in
  let __resource = { key_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_default_kms_key __resource);
  ()
