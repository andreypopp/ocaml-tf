(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_efs_file_system_policy = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
      (** bypass_policy_lockout_safety_check *)
  file_system_id : string prop;  (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_efs_file_system_policy *)

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
