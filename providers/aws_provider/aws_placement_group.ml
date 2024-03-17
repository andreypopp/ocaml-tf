(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_placement_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_count : float prop option; [@option]
      (** partition_count *)
  spread_level : string prop option; [@option]  (** spread_level *)
  strategy : string prop;  (** strategy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_placement_group *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  partition_count : float prop;
  placement_group_id : string prop;
  spread_level : string prop;
  strategy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_placement_group ?id ?partition_count ?spread_level ?tags
    ?tags_all ~name ~strategy __resource_id =
  let __resource_type = "aws_placement_group" in
  let __resource =
    ({
       id;
       name;
       partition_count;
       spread_level;
       strategy;
       tags;
       tags_all;
     }
      : aws_placement_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_placement_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       partition_count =
         Prop.computed __resource_type __resource_id
           "partition_count";
       placement_group_id =
         Prop.computed __resource_type __resource_id
           "placement_group_id";
       spread_level =
         Prop.computed __resource_type __resource_id "spread_level";
       strategy =
         Prop.computed __resource_type __resource_id "strategy";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
