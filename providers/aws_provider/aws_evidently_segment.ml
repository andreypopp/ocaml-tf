(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_evidently_segment = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  pattern : string;  (** pattern *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_evidently_segment *)

let aws_evidently_segment ?description ?tags ~name ~pattern
    __resource_id =
  let __resource_type = "aws_evidently_segment" in
  let __resource = { description; name; pattern; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_evidently_segment __resource);
  ()