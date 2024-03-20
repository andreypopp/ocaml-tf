(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_snapshot = {
  id : string prop option; [@option]  (** id *)
  namespace_name : string prop;  (** namespace_name *)
  retention_period : float prop option; [@option]
      (** retention_period *)
  snapshot_name : string prop;  (** snapshot_name *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_snapshot *)

let aws_redshiftserverless_snapshot ?id ?retention_period
    ~namespace_name ~snapshot_name () :
    aws_redshiftserverless_snapshot =
  { id; namespace_name; retention_period; snapshot_name }

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

let make ?id ?retention_period ~namespace_name ~snapshot_name __id =
  let __type = "aws_redshiftserverless_snapshot" in
  let __attrs =
    ({
       accounts_with_provisioned_restore_access =
         Prop.computed __type __id
           "accounts_with_provisioned_restore_access";
       accounts_with_restore_access =
         Prop.computed __type __id "accounts_with_restore_access";
       admin_username = Prop.computed __type __id "admin_username";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       namespace_arn = Prop.computed __type __id "namespace_arn";
       namespace_name = Prop.computed __type __id "namespace_name";
       owner_account = Prop.computed __type __id "owner_account";
       retention_period =
         Prop.computed __type __id "retention_period";
       snapshot_name = Prop.computed __type __id "snapshot_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_snapshot
        (aws_redshiftserverless_snapshot ?id ?retention_period
           ~namespace_name ~snapshot_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?retention_period ~namespace_name
    ~snapshot_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?retention_period ~namespace_name ~snapshot_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
