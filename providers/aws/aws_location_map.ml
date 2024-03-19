(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type configuration = { style : string prop  (** style *) }
[@@deriving yojson_of]
(** configuration *)

type aws_location_map = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  map_name : string prop;  (** map_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  configuration : configuration list;
}
[@@deriving yojson_of]
(** aws_location_map *)

let configuration ~style () : configuration = { style }

let aws_location_map ?description ?id ?tags ?tags_all ~map_name
    ~configuration () : aws_location_map =
  { description; id; map_name; tags; tags_all; configuration }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  map_arn : string prop;
  map_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ~map_name
    ~configuration __resource_id =
  let __resource_type = "aws_location_map" in
  let __resource =
    aws_location_map ?description ?id ?tags ?tags_all ~map_name
      ~configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_map __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       map_arn =
         Prop.computed __resource_type __resource_id "map_arn";
       map_name =
         Prop.computed __resource_type __resource_id "map_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
