(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_media_store_container = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_media_store_container *)

let aws_media_store_container ?tags ~name __resource_id =
  let __resource_type = "aws_media_store_container" in
  let __resource = { name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_media_store_container __resource);
  ()
