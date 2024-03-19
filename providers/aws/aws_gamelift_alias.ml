(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type routing_strategy = {
  fleet_id : string prop option; [@option]  (** fleet_id *)
  message : string prop option; [@option]  (** message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** routing_strategy *)

type aws_gamelift_alias = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  routing_strategy : routing_strategy list;
}
[@@deriving yojson_of]
(** aws_gamelift_alias *)

let routing_strategy ?fleet_id ?message ~type_ () : routing_strategy
    =
  { fleet_id; message; type_ }

let aws_gamelift_alias ?description ?id ?tags ?tags_all ~name
    ~routing_strategy () : aws_gamelift_alias =
  { description; id; name; tags; tags_all; routing_strategy }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~routing_strategy __resource_id =
  let __resource_type = "aws_gamelift_alias" in
  let __resource =
    aws_gamelift_alias ?description ?id ?tags ?tags_all ~name
      ~routing_strategy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_alias __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
