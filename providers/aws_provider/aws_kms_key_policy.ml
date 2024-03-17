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

let aws_kms_key_policy ?bypass_policy_lockout_safety_check ?id
    ~key_id ~policy __resource_id =
  let __resource_type = "aws_kms_key_policy" in
  let __resource =
    { bypass_policy_lockout_safety_check; id; key_id; policy }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_key_policy __resource);
  ()
