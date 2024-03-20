(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_snapshot = {
  id : string prop option; [@option]
  namespace_name : string prop;
  retention_period : float prop option; [@option]
  snapshot_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftserverless_snapshot) -> ()

let yojson_of_aws_redshiftserverless_snapshot =
  (function
   | {
       id = v_id;
       namespace_name = v_namespace_name;
       retention_period = v_retention_period;
       snapshot_name = v_snapshot_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_snapshot_name in
         ("snapshot_name", arg) :: bnds
       in
       let bnds =
         match v_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_name
         in
         ("namespace_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshiftserverless_snapshot ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_snapshot

[@@@deriving.end]

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
