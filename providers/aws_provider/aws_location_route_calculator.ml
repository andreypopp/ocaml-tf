(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_location_route_calculator__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_location_route_calculator__timeouts *)

type aws_location_route_calculator = {
  calculator_name : string;  (** calculator_name *)
  data_source : string;  (** data_source *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_location_route_calculator__timeouts option;
}
[@@deriving yojson_of]
(** aws_location_route_calculator *)

let aws_location_route_calculator ?description ?id ?tags ?tags_all
    ?timeouts ~calculator_name ~data_source __resource_id =
  let __resource_type = "aws_location_route_calculator" in
  let __resource =
    {
      calculator_name;
      data_source;
      description;
      id;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_route_calculator __resource);
  ()
