(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_user_group = {
  engine : string prop;  (** engine *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_group_id : string prop;  (** user_group_id *)
  user_ids : string prop list option; [@option]  (** user_ids *)
}
[@@deriving yojson_of]
(** aws_elasticache_user_group *)

type t = {
  arn : string prop;
  engine : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_group_id : string prop;
  user_ids : string list prop;
}

let aws_elasticache_user_group ?id ?tags ?tags_all ?user_ids ~engine
    ~user_group_id __resource_id =
  let __resource_type = "aws_elasticache_user_group" in
  let __resource =
    ({ engine; id; tags; tags_all; user_group_id; user_ids }
      : aws_elasticache_user_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_user_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       engine = Prop.computed __resource_type __resource_id "engine";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       user_group_id =
         Prop.computed __resource_type __resource_id "user_group_id";
       user_ids =
         Prop.computed __resource_type __resource_id "user_ids";
     }
      : t)
  in
  __resource_attributes
