(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
    ?id ~file_system_id ~policy __resource_id =
  let __resource_type = "aws_efs_file_system_policy" in
  let __resource =
    {
      bypass_policy_lockout_safety_check;
      file_system_id;
      id;
      policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_file_system_policy __resource);
  ()
