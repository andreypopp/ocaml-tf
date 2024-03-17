(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_location_place_index__data_source_configuration = {
  intended_use : string option; [@option]  (** intended_use *)
}
[@@deriving yojson_of]
(** aws_location_place_index__data_source_configuration *)

type aws_location_place_index = {
  data_source : string;  (** data_source *)
  description : string option; [@option]  (** description *)
  index_name : string;  (** index_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  data_source_configuration :
    aws_location_place_index__data_source_configuration list;
}
[@@deriving yojson_of]
(** aws_location_place_index *)

let aws_location_place_index ?description ?tags ~data_source
    ~index_name ~data_source_configuration __resource_id =
  let __resource_type = "aws_location_place_index" in
  let __resource =
    {
      data_source;
      description;
      index_name;
      tags;
      data_source_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_place_index __resource);
  ()
