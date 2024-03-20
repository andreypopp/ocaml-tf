(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_key_policy = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
      (** bypass_policy_lockout_safety_check *)
  id : string prop option; [@option]  (** id *)
  key_id : string prop;  (** key_id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_kms_key_policy *)

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
