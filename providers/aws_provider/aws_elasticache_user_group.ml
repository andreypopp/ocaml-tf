(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_user_group = {
  engine : string;  (** engine *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_group_id : string;  (** user_group_id *)
  user_ids : string list option; [@option]  (** user_ids *)
}
[@@deriving yojson_of]
(** aws_elasticache_user_group *)

let aws_elasticache_user_group ?tags ?user_ids ~engine ~user_group_id
    __resource_id =
  let __resource_type = "aws_elasticache_user_group" in
  let __resource = { engine; tags; user_group_id; user_ids } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_user_group __resource);
  ()
