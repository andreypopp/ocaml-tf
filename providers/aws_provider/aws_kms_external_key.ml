(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_external_key = {
  bypass_policy_lockout_safety_check : bool option; [@option]
      (** bypass_policy_lockout_safety_check *)
  deletion_window_in_days : float option; [@option]
      (** deletion_window_in_days *)
  description : string option; [@option]  (** description *)
  key_material_base64 : string option; [@option]
      (** key_material_base64 *)
  tags : (string * string) list option; [@option]  (** tags *)
  valid_to : string option; [@option]  (** valid_to *)
}
[@@deriving yojson_of]
(** aws_kms_external_key *)

let aws_kms_external_key ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?key_material_base64 ?tags
    ?valid_to __resource_id =
  let __resource_type = "aws_kms_external_key" in
  let __resource =
    {
      bypass_policy_lockout_safety_check;
      deletion_window_in_days;
      description;
      key_material_base64;
      tags;
      valid_to;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_external_key __resource);
  ()
