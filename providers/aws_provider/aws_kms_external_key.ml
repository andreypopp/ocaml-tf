(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_external_key = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
      (** bypass_policy_lockout_safety_check *)
  deletion_window_in_days : float prop option; [@option]
      (** deletion_window_in_days *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  key_material_base64 : string prop option; [@option]
      (** key_material_base64 *)
  multi_region : bool prop option; [@option]  (** multi_region *)
  policy : string prop option; [@option]  (** policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  valid_to : string prop option; [@option]  (** valid_to *)
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
