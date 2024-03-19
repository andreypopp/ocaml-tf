(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_user_group_association = {
  id : string prop option; [@option]  (** id *)
  user_group_id : string prop;  (** user_group_id *)
  user_id : string prop;  (** user_id *)
}
[@@deriving yojson_of]
(** aws_elasticache_user_group_association *)

let aws_elasticache_user_group_association ?id ~user_group_id
    ~user_id () : aws_elasticache_user_group_association =
  { id; user_group_id; user_id }

type t = {
  id : string prop;
  user_group_id : string prop;
  user_id : string prop;
}

let register ?tf_module ?id ~user_group_id ~user_id __resource_id =
  let __resource_type = "aws_elasticache_user_group_association" in
  let __resource =
    aws_elasticache_user_group_association ?id ~user_group_id
      ~user_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_user_group_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       user_group_id =
         Prop.computed __resource_type __resource_id "user_group_id";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
     }
      : t)
  in
  __resource_attributes
