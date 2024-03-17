(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_gamelift_alias__routing_strategy = {
  fleet_id : string option; [@option]  (** fleet_id *)
  message : string option; [@option]  (** message *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_gamelift_alias__routing_strategy *)

type aws_gamelift_alias = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  routing_strategy : aws_gamelift_alias__routing_strategy list;
}
[@@deriving yojson_of]
(** aws_gamelift_alias *)

let aws_gamelift_alias ?description ?id ?tags ?tags_all ~name
    ~routing_strategy __resource_id =
  let __resource_type = "aws_gamelift_alias" in
  let __resource =
    { description; id; name; tags; tags_all; routing_strategy }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_alias __resource);
  ()
