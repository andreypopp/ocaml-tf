(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_glue_registry = {
  description : string option; [@option]  (** description *)
  registry_name : string;  (** registry_name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_glue_registry *)

let aws_glue_registry ?description ?tags ~registry_name __resource_id
    =
  let __resource_type = "aws_glue_registry" in
  let __resource = { description; registry_name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_registry __resource);
  ()
