(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?changeable_for_days ?id ?max_retention_days
    ?min_retention_days ~backup_vault_name __id =
  let __type = "aws_backup_vault_lock_configuration" in
  let __attrs =
    ({
       backup_vault_arn =
         Prop.computed __type __id "backup_vault_arn";
       backup_vault_name =
         Prop.computed __type __id "backup_vault_name";
       changeable_for_days =
         Prop.computed __type __id "changeable_for_days";
       id = Prop.computed __type __id "id";
       max_retention_days =
         Prop.computed __type __id "max_retention_days";
       min_retention_days =
         Prop.computed __type __id "min_retention_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_vault_lock_configuration
        (aws_backup_vault_lock_configuration ?changeable_for_days ?id
           ?max_retention_days ?min_retention_days ~backup_vault_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?changeable_for_days ?id ?max_retention_days
    ?min_retention_days ~backup_vault_name __id =
  let (r : _ Tf_core.resource) =
    make ?changeable_for_days ?id ?max_retention_days
      ?min_retention_days ~backup_vault_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
