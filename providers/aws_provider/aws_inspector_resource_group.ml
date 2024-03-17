(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_inspector_resource_group = {
  id : string option; [@option]  (** id *)
  tags : (string * string) list;  (** tags *)
}
[@@deriving yojson_of]
(** aws_inspector_resource_group *)

let aws_inspector_resource_group ?id ~tags __resource_id =
  let __resource_type = "aws_inspector_resource_group" in
  let __resource = { id; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector_resource_group __resource);
  ()
