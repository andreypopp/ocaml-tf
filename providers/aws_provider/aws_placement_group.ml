(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_placement_group = {
  name : string;  (** name *)
  strategy : string;  (** strategy *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_placement_group *)

let aws_placement_group ?tags ~name ~strategy __resource_id =
  let __resource_type = "aws_placement_group" in
  let __resource = { name; strategy; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_placement_group __resource);
  ()
