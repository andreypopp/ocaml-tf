(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_synthetics_group = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_synthetics_group *)

let aws_synthetics_group ?tags ~name __resource_id =
  let __resource_type = "aws_synthetics_group" in
  let __resource = { name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_synthetics_group __resource);
  ()
