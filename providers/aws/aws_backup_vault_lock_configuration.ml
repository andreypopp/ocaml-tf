(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_vault_lock_configuration = {
  backup_vault_name : string prop;
  changeable_for_days : float prop option; [@option]
  id : string prop option; [@option]
  max_retention_days : float prop option; [@option]
  min_retention_days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_vault_lock_configuration) -> ()

let yojson_of_aws_backup_vault_lock_configuration =
  (function
   | {
       backup_vault_name = v_backup_vault_name;
       changeable_for_days = v_changeable_for_days;
       id = v_id;
       max_retention_days = v_max_retention_days;
       min_retention_days = v_min_retention_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_changeable_for_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "changeable_for_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backup_vault_name
         in
         ("backup_vault_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_backup_vault_lock_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_vault_lock_configuration

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
