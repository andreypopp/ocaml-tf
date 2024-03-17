(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ebs_encryption_by_default = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_ebs_encryption_by_default *)

let aws_ebs_encryption_by_default ?enabled __resource_id =
  let __resource_type = "aws_ebs_encryption_by_default" in
  let __resource = { enabled } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_encryption_by_default __resource);
  ()
