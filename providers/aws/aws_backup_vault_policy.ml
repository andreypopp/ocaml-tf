(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_vault_policy = {
  backup_vault_name : string prop;  (** backup_vault_name *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_backup_vault_policy *)

let aws_backup_vault_policy ?id ~backup_vault_name ~policy () :
    aws_backup_vault_policy =
  { backup_vault_name; id; policy }

type t = {
  backup_vault_arn : string prop;
  backup_vault_name : string prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~backup_vault_name ~policy __id =
  let __type = "aws_backup_vault_policy" in
  let __attrs =
    ({
       backup_vault_arn =
         Prop.computed __type __id "backup_vault_arn";
       backup_vault_name =
         Prop.computed __type __id "backup_vault_name";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_vault_policy
        (aws_backup_vault_policy ?id ~backup_vault_name ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~backup_vault_name ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~backup_vault_name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
