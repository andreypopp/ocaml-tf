(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_memorydb_acl = {
  tags : (string * string) list option; [@option]  (** tags *)
  user_names : string list option; [@option]  (** user_names *)
}
[@@deriving yojson_of]
(** aws_memorydb_acl *)

let aws_memorydb_acl ?tags ?user_names __resource_id =
  let __resource_type = "aws_memorydb_acl" in
  let __resource = { tags; user_names } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_memorydb_acl __resource);
  ()
