(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_registry = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  registry_name : string;  (** registry_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_glue_registry *)

let aws_glue_registry ?description ?id ?tags ?tags_all ~registry_name
    __resource_id =
  let __resource_type = "aws_glue_registry" in
  let __resource =
    { description; id; registry_name; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_registry __resource);
  ()
