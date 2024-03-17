(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_location_place_index__data_source_configuration = {
  intended_use : string prop option; [@option]  (** intended_use *)
}
[@@deriving yojson_of]
(** aws_location_place_index__data_source_configuration *)

type aws_location_place_index = {
  data_source : string prop;  (** data_source *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  index_name : string prop;  (** index_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  data_source_configuration :
    aws_location_place_index__data_source_configuration list;
}
[@@deriving yojson_of]
(** aws_location_place_index *)

let aws_location_place_index ?description ?id ?tags ?tags_all
    ~data_source ~index_name ~data_source_configuration __resource_id
    =
  let __resource_type = "aws_location_place_index" in
  let __resource =
    {
      data_source;
      description;
      id;
      index_name;
      tags;
      tags_all;
      data_source_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_place_index __resource);
  ()
