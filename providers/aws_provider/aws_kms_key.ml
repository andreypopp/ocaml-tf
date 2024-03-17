(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_key__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_kms_key__timeouts *)

type aws_kms_key = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
      (** bypass_policy_lockout_safety_check *)
  custom_key_store_id : string prop option; [@option]
      (** custom_key_store_id *)
  customer_master_key_spec : string prop option; [@option]
      (** customer_master_key_spec *)
  deletion_window_in_days : float prop option; [@option]
      (** deletion_window_in_days *)
  description : string prop option; [@option]  (** description *)
  enable_key_rotation : bool prop option; [@option]
      (** enable_key_rotation *)
  id : string prop option; [@option]  (** id *)
  is_enabled : bool prop option; [@option]  (** is_enabled *)
  key_usage : string prop option; [@option]  (** key_usage *)
  multi_region : bool prop option; [@option]  (** multi_region *)
  policy : string prop option; [@option]  (** policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  xks_key_id : string prop option; [@option]  (** xks_key_id *)
  timeouts : aws_kms_key__timeouts option;
}
[@@deriving yojson_of]
(** aws_kms_key *)

let aws_kms_key ?bypass_policy_lockout_safety_check
    ?custom_key_store_id ?customer_master_key_spec
    ?deletion_window_in_days ?description ?enable_key_rotation ?id
    ?is_enabled ?key_usage ?multi_region ?policy ?tags ?tags_all
    ?xks_key_id ?timeouts __resource_id =
  let __resource_type = "aws_kms_key" in
  let __resource =
    {
      bypass_policy_lockout_safety_check;
      custom_key_store_id;
      customer_master_key_spec;
      deletion_window_in_days;
      description;
      enable_key_rotation;
      id;
      is_enabled;
      key_usage;
      multi_region;
      policy;
      tags;
      tags_all;
      xks_key_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_key __resource);
  ()
