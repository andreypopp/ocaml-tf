(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_location_map__configuration = {
  style : string;  (** style *)
}
[@@deriving yojson_of]
(** aws_location_map__configuration *)

type aws_location_map = {
  description : string option; [@option]  (** description *)
  map_name : string;  (** map_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  configuration : aws_location_map__configuration list;
}
[@@deriving yojson_of]
(** aws_location_map *)

let aws_location_map ?description ?tags ~map_name ~configuration
    __resource_id =
  let __resource_type = "aws_location_map" in
  let __resource = { description; map_name; tags; configuration } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_map __resource);
  ()
