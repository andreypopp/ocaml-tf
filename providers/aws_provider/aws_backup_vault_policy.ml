(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_backup_vault_policy = {
  backup_vault_name : string;  (** backup_vault_name *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_backup_vault_policy *)

let aws_backup_vault_policy ~backup_vault_name ~policy __resource_id
    =
  let __resource_type = "aws_backup_vault_policy" in
  let __resource = { backup_vault_name; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_vault_policy __resource);
  ()