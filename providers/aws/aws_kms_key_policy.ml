(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_key_policy = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
  id : string prop option; [@option]
  key_id : string prop;
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_key_policy) -> ()

let yojson_of_aws_kms_key_policy =
  (function
   | {
       bypass_policy_lockout_safety_check =
         v_bypass_policy_lockout_safety_check;
       id = v_id;
       key_id = v_key_id;
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
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
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
         match v_bypass_policy_lockout_safety_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bypass_policy_lockout_safety_check", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kms_key_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_key_policy

[@@@deriving.end]

let aws_kms_key_policy ?bypass_policy_lockout_safety_check ?id
    ~key_id ~policy () : aws_kms_key_policy =
  { bypass_policy_lockout_safety_check; id; key_id; policy }

type t = {
  bypass_policy_lockout_safety_check : bool prop;
  id : string prop;
  key_id : string prop;
  policy : string prop;
}

let make ?bypass_policy_lockout_safety_check ?id ~key_id ~policy __id
    =
  let __type = "aws_kms_key_policy" in
  let __attrs =
    ({
       bypass_policy_lockout_safety_check =
         Prop.computed __type __id
           "bypass_policy_lockout_safety_check";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_key_policy
        (aws_kms_key_policy ?bypass_policy_lockout_safety_check ?id
           ~key_id ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_policy_lockout_safety_check ?id
    ~key_id ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_policy_lockout_safety_check ?id ~key_id ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
