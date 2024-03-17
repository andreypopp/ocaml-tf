(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_media_store_container_policy = {
  container_name : string;  (** container_name *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_media_store_container_policy *)

let aws_media_store_container_policy ~container_name ~policy
    __resource_id =
  let __resource_type = "aws_media_store_container_policy" in
  let __resource = { container_name; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_media_store_container_policy __resource);
  ()
