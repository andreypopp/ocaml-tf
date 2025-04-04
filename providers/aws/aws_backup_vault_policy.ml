(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_vault_policy = {
  backup_vault_name : string prop;
  id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_vault_policy) -> ()

let yojson_of_aws_backup_vault_policy =
  (function
   | {
       backup_vault_name = v_backup_vault_name;
       id = v_id;
       policy = v_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_backup_vault_name
         in
         ("backup_vault_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_backup_vault_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_vault_policy

[@@@deriving.end]

let aws_backup_vault_policy ?id ~backup_vault_name ~policy () :
    aws_backup_vault_policy =
  { backup_vault_name; id; policy }

type t = {
  tf_name : string;
  backup_vault_arn : string prop;
  backup_vault_name : string prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~backup_vault_name ~policy __id =
  let __type = "aws_backup_vault_policy" in
  let __attrs =
    ({
       tf_name = __id;
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
