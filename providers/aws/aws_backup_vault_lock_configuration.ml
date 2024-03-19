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
    ?max_retention_days ?min_retention_days ~backup_vault_name () :
    aws_backup_vault_lock_configuration =
  {
    backup_vault_name;
    changeable_for_days;
    id;
    max_retention_days;
    min_retention_days;
  }

type t = {
  backup_vault_arn : string prop;
  backup_vault_name : string prop;
  changeable_for_days : float prop;
  id : string prop;
  max_retention_days : float prop;
  min_retention_days : float prop;
}

let register ?tf_module ?changeable_for_days ?id ?max_retention_days
    ?min_retention_days ~backup_vault_name __resource_id =
  let __resource_type = "aws_backup_vault_lock_configuration" in
  let __resource =
    aws_backup_vault_lock_configuration ?changeable_for_days ?id
      ?max_retention_days ?min_retention_days ~backup_vault_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_vault_lock_configuration __resource);
  let __resource_attributes =
    ({
       backup_vault_arn =
         Prop.computed __resource_type __resource_id
           "backup_vault_arn";
       backup_vault_name =
         Prop.computed __resource_type __resource_id
           "backup_vault_name";
       changeable_for_days =
         Prop.computed __resource_type __resource_id
           "changeable_for_days";
       id = Prop.computed __resource_type __resource_id "id";
       max_retention_days =
         Prop.computed __resource_type __resource_id
           "max_retention_days";
       min_retention_days =
         Prop.computed __resource_type __resource_id
           "min_retention_days";
     }
      : t)
  in
  __resource_attributes
