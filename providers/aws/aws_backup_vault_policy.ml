(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~backup_vault_name ~policy __resource_id
    =
  let __resource_type = "aws_backup_vault_policy" in
  let __resource =
    aws_backup_vault_policy ?id ~backup_vault_name ~policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_vault_policy __resource);
  let __resource_attributes =
    ({
       backup_vault_arn =
         Prop.computed __resource_type __resource_id
           "backup_vault_arn";
       backup_vault_name =
         Prop.computed __resource_type __resource_id
           "backup_vault_name";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
