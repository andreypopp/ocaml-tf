(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_snapshot = {
  id : string prop option; [@option]  (** id *)
  namespace_name : string prop;  (** namespace_name *)
  retention_period : float prop option; [@option]
      (** retention_period *)
  snapshot_name : string prop;  (** snapshot_name *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_snapshot *)

type t = {
  accounts_with_provisioned_restore_access : string list prop;
  accounts_with_restore_access : string list prop;
  admin_username : string prop;
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  namespace_arn : string prop;
  namespace_name : string prop;
  owner_account : string prop;
  retention_period : float prop;
  snapshot_name : string prop;
}

let aws_redshiftserverless_snapshot ?id ?retention_period
    ~namespace_name ~snapshot_name __resource_id =
  let __resource_type = "aws_redshiftserverless_snapshot" in
  let __resource =
    ({ id; namespace_name; retention_period; snapshot_name }
      : aws_redshiftserverless_snapshot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_snapshot __resource);
  let __resource_attributes =
    ({
       accounts_with_provisioned_restore_access =
         Prop.computed __resource_type __resource_id
           "accounts_with_provisioned_restore_access";
       accounts_with_restore_access =
         Prop.computed __resource_type __resource_id
           "accounts_with_restore_access";
       admin_username =
         Prop.computed __resource_type __resource_id "admin_username";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       namespace_arn =
         Prop.computed __resource_type __resource_id "namespace_arn";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       owner_account =
         Prop.computed __resource_type __resource_id "owner_account";
       retention_period =
         Prop.computed __resource_type __resource_id
           "retention_period";
       snapshot_name =
         Prop.computed __resource_type __resource_id "snapshot_name";
     }
      : t)
  in
  __resource_attributes
