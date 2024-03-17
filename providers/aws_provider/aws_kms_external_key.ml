(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_external_key = {
  bypass_policy_lockout_safety_check : bool option; [@option]
      (** bypass_policy_lockout_safety_check *)
  deletion_window_in_days : float option; [@option]
      (** deletion_window_in_days *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  key_material_base64 : string option; [@option]
      (** key_material_base64 *)
  multi_region : bool option; [@option]  (** multi_region *)
  policy : string option; [@option]  (** policy *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  valid_to : string option; [@option]  (** valid_to *)
}
[@@deriving yojson_of]
(** aws_kms_external_key *)

let aws_kms_external_key ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id
    ?key_material_base64 ?multi_region ?policy ?tags ?tags_all
    ?valid_to __resource_id =
  let __resource_type = "aws_kms_external_key" in
  let __resource =
    {
      bypass_policy_lockout_safety_check;
      deletion_window_in_days;
      description;
      enabled;
      id;
      key_material_base64;
      multi_region;
      policy;
      tags;
      tags_all;
      valid_to;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_external_key __resource);
  ()
