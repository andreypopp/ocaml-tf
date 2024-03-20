(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_glacier_vault_lock = {
  complete_lock : bool prop;
  id : string prop option; [@option]
  ignore_deletion_error : bool prop option; [@option]
  policy : string prop;
  vault_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glacier_vault_lock) -> ()

let yojson_of_aws_glacier_vault_lock =
  (function
   | {
       complete_lock = v_complete_lock;
       id = v_id;
       ignore_deletion_error = v_ignore_deletion_error;
       policy = v_policy;
       vault_name = v_vault_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vault_name in
         ("vault_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         match v_ignore_deletion_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_deletion_error", arg in
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
         let arg = yojson_of_prop yojson_of_bool v_complete_lock in
         ("complete_lock", arg) :: bnds
       in
       `Assoc bnds
    : aws_glacier_vault_lock -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glacier_vault_lock

[@@@deriving.end]

let aws_glacier_vault_lock ?id ?ignore_deletion_error ~complete_lock
    ~policy ~vault_name () : aws_glacier_vault_lock =
  { complete_lock; id; ignore_deletion_error; policy; vault_name }

type t = {
  complete_lock : bool prop;
  id : string prop;
  ignore_deletion_error : bool prop;
  policy : string prop;
  vault_name : string prop;
}

let make ?id ?ignore_deletion_error ~complete_lock ~policy
    ~vault_name __id =
  let __type = "aws_glacier_vault_lock" in
  let __attrs =
    ({
       complete_lock = Prop.computed __type __id "complete_lock";
       id = Prop.computed __type __id "id";
       ignore_deletion_error =
         Prop.computed __type __id "ignore_deletion_error";
       policy = Prop.computed __type __id "policy";
       vault_name = Prop.computed __type __id "vault_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glacier_vault_lock
        (aws_glacier_vault_lock ?id ?ignore_deletion_error
           ~complete_lock ~policy ~vault_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ignore_deletion_error ~complete_lock
    ~policy ~vault_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ignore_deletion_error ~complete_lock ~policy
      ~vault_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
