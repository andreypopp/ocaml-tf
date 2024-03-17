(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_vault_lock_configuration = {
  backup_vault_name : string prop;  (** backup_vault_name *)
  changeable_for_days : float prop option; [@option]
      (** changeable_for_days *)
  id : string prop option; [@option]  (** id *)
  max_retention_days : float prop option; [@option]
      (** max_retention_days *)
  min_retention_days : float prop option; [@option]
      (** min_retention_days *)
}
[@@deriving yojson_of]
(** aws_backup_vault_lock_configuration *)

let aws_backup_vault_lock_configuration ?changeable_for_days ?id
    ?max_retention_days ?min_retention_days ~backup_vault_name
    __resource_id =
  let __resource_type = "aws_backup_vault_lock_configuration" in
  let __resource =
    {
      backup_vault_name;
      changeable_for_days;
      id;
      max_retention_days;
      min_retention_days;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_vault_lock_configuration __resource);
  ()
