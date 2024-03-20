(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_efs_file_system_policy = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
  file_system_id : string prop;
  id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_file_system_policy) -> ()

let yojson_of_aws_efs_file_system_policy =
  (function
   | {
       bypass_policy_lockout_safety_check =
         v_bypass_policy_lockout_safety_check;
       file_system_id = v_file_system_id;
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
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
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
    : aws_efs_file_system_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_file_system_policy

[@@@deriving.end]

let aws_efs_file_system_policy ?bypass_policy_lockout_safety_check
    ?id ~file_system_id ~policy () : aws_efs_file_system_policy =
  { bypass_policy_lockout_safety_check; file_system_id; id; policy }

type t = {
  bypass_policy_lockout_safety_check : bool prop;
  file_system_id : string prop;
  id : string prop;
  policy : string prop;
}

let make ?bypass_policy_lockout_safety_check ?id ~file_system_id
    ~policy __id =
  let __type = "aws_efs_file_system_policy" in
  let __attrs =
    ({
       bypass_policy_lockout_safety_check =
         Prop.computed __type __id
           "bypass_policy_lockout_safety_check";
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_file_system_policy
        (aws_efs_file_system_policy
           ?bypass_policy_lockout_safety_check ?id ~file_system_id
           ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_policy_lockout_safety_check ?id
    ~file_system_id ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_policy_lockout_safety_check ?id ~file_system_id
      ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
