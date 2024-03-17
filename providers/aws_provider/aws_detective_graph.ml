(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_detective_graph = {
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_detective_graph *)

let aws_detective_graph ?tags __resource_id =
  let __resource_type = "aws_detective_graph" in
  let __resource = { tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_graph __resource);
  ()
