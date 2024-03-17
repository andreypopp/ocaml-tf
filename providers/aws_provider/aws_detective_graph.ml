(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_detective_graph = {
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_detective_graph *)

let aws_detective_graph ?id ?tags ?tags_all __resource_id =
  let __resource_type = "aws_detective_graph" in
  let __resource = { id; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_graph __resource);
  ()
