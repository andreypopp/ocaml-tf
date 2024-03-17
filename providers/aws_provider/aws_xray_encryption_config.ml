(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_xray_encryption_config = {
  key_id : string option; [@option]  (** key_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_xray_encryption_config *)

let aws_xray_encryption_config ?key_id ~type_ __resource_id =
  let __resource_type = "aws_xray_encryption_config" in
  let __resource = { key_id; type_ } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_xray_encryption_config __resource);
  ()
