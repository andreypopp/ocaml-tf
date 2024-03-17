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
    ~user_id __resource_id =
  let __resource_type = "aws_elasticache_user_group_association" in
  let __resource = { id; user_group_id; user_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_user_group_association __resource);
  ()
