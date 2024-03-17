(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_key_policy = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
      (** bypass_policy_lockout_safety_check *)
  id : string prop option; [@option]  (** id *)
  key_id : string prop;  (** key_id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_kms_key_policy *)

type t = {
  bypass_policy_lockout_safety_check : bool prop;
  id : string prop;
  key_id : string prop;
  policy : string prop;
}

let aws_kms_key_policy ?bypass_policy_lockout_safety_check ?id
    ~key_id ~policy __resource_id =
  let __resource_type = "aws_kms_key_policy" in
  let __resource =
    ({ bypass_policy_lockout_safety_check; id; key_id; policy }
      : aws_kms_key_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_key_policy __resource);
  let __resource_attributes =
    ({
       bypass_policy_lockout_safety_check =
         Prop.computed __resource_type __resource_id
           "bypass_policy_lockout_safety_check";
       id = Prop.computed __resource_type __resource_id "id";
       key_id = Prop.computed __resource_type __resource_id "key_id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
