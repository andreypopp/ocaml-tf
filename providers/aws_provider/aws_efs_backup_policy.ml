(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_efs_backup_policy__backup_policy = {
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_efs_backup_policy__backup_policy *)

type aws_efs_backup_policy = {
  file_system_id : string;  (** file_system_id *)
  id : string option; [@option]  (** id *)
  backup_policy : aws_efs_backup_policy__backup_policy list;
}
[@@deriving yojson_of]
(** aws_efs_backup_policy *)

let aws_efs_backup_policy ?id ~file_system_id ~backup_policy
    __resource_id =
  let __resource_type = "aws_efs_backup_policy" in
  let __resource = { file_system_id; id; backup_policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_backup_policy __resource);
  ()
