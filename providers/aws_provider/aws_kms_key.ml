(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_key__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_kms_key__timeouts *)

type aws_kms_key = {
  bypass_policy_lockout_safety_check : bool option; [@option]
      (** bypass_policy_lockout_safety_check *)
  custom_key_store_id : string option; [@option]
      (** custom_key_store_id *)
  customer_master_key_spec : string option; [@option]
      (** customer_master_key_spec *)
  deletion_window_in_days : float option; [@option]
      (** deletion_window_in_days *)
  enable_key_rotation : bool option; [@option]
      (** enable_key_rotation *)
  is_enabled : bool option; [@option]  (** is_enabled *)
  key_usage : string option; [@option]  (** key_usage *)
  tags : (string * string) list option; [@option]  (** tags *)
  xks_key_id : string option; [@option]  (** xks_key_id *)
  timeouts : aws_kms_key__timeouts option;
}
[@@deriving yojson_of]
(** aws_kms_key *)

let aws_kms_key ?bypass_policy_lockout_safety_check
    ?custom_key_store_id ?customer_master_key_spec
    ?deletion_window_in_days ?enable_key_rotation ?is_enabled
    ?key_usage ?tags ?xks_key_id ?timeouts __resource_id =
  let __resource_type = "aws_kms_key" in
  let __resource =
    {
      bypass_policy_lockout_safety_check;
      custom_key_store_id;
      customer_master_key_spec;
      deletion_window_in_days;
      enable_key_rotation;
      is_enabled;
      key_usage;
      tags;
      xks_key_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_key __resource);
  ()
