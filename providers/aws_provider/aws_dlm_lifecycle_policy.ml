(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__encryption_configuration = {
  cmk_arn : string option; [@option]  (** cmk_arn *)
  encrypted : bool option; [@option]  (** encrypted *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__encryption_configuration *)

type aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__retain_rule = {
  interval : float;  (** interval *)
  interval_unit : string;  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__retain_rule *)

type aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy = {
  target : string;  (** target *)
  encryption_configuration :
    aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__encryption_configuration
    list;
  retain_rule :
    aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__retain_rule
    list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy *)

type aws_dlm_lifecycle_policy__policy_details__action = {
  name : string;  (** name *)
  cross_region_copy :
    aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy
    list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__action *)

type aws_dlm_lifecycle_policy__policy_details__event_source__parameters = {
  description_regex : string;  (** description_regex *)
  event_type : string;  (** event_type *)
  snapshot_owner : string list;  (** snapshot_owner *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__event_source__parameters *)

type aws_dlm_lifecycle_policy__policy_details__event_source = {
  type_ : string; [@key "type"]  (** type *)
  parameters :
    aws_dlm_lifecycle_policy__policy_details__event_source__parameters
    list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__event_source *)

type aws_dlm_lifecycle_policy__policy_details__parameters = {
  exclude_boot_volume : bool option; [@option]
      (** exclude_boot_volume *)
  no_reboot : bool option; [@option]  (** no_reboot *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__parameters *)

type aws_dlm_lifecycle_policy__policy_details__schedule__create_rule = {
  cron_expression : string option; [@option]  (** cron_expression *)
  interval : float option; [@option]  (** interval *)
  interval_unit : string option; [@option]  (** interval_unit *)
  location : string option; [@option]  (** location *)
  times : string list option; [@option]  (** times *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__create_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__deprecate_rule = {
  interval : float;  (** interval *)
  interval_unit : string;  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__deprecate_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__retain_rule = {
  interval : float;  (** interval *)
  interval_unit : string;  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__retain_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule = {
  cmk_arn : string option; [@option]  (** cmk_arn *)
  copy_tags : bool option; [@option]  (** copy_tags *)
  encrypted : bool;  (** encrypted *)
  target : string;  (** target *)
  deprecate_rule :
    aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__deprecate_rule
    list;
  retain_rule :
    aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__retain_rule
    list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__deprecate_rule = {
  count : float option; [@option]  (** count *)
  interval : float option; [@option]  (** interval *)
  interval_unit : string option; [@option]  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__deprecate_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__fast_restore_rule = {
  availability_zones : string list;  (** availability_zones *)
  count : float option; [@option]  (** count *)
  interval : float option; [@option]  (** interval *)
  interval_unit : string option; [@option]  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__fast_restore_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__retain_rule = {
  count : float option; [@option]  (** count *)
  interval : float option; [@option]  (** interval *)
  interval_unit : string option; [@option]  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__retain_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__share_rule = {
  target_accounts : string list;  (** target_accounts *)
  unshare_interval : float option; [@option]  (** unshare_interval *)
  unshare_interval_unit : string option; [@option]
      (** unshare_interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__share_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule = {
  copy_tags : bool option; [@option]  (** copy_tags *)
  name : string;  (** name *)
  tags_to_add : (string * string) list option; [@option]
      (** tags_to_add *)
  variable_tags : (string * string) list option; [@option]
      (** variable_tags *)
  create_rule :
    aws_dlm_lifecycle_policy__policy_details__schedule__create_rule
    list;
  cross_region_copy_rule :
    aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule
    list;
  deprecate_rule :
    aws_dlm_lifecycle_policy__policy_details__schedule__deprecate_rule
    list;
  fast_restore_rule :
    aws_dlm_lifecycle_policy__policy_details__schedule__fast_restore_rule
    list;
  retain_rule :
    aws_dlm_lifecycle_policy__policy_details__schedule__retain_rule
    list;
  share_rule :
    aws_dlm_lifecycle_policy__policy_details__schedule__share_rule
    list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule *)

type aws_dlm_lifecycle_policy__policy_details = {
  policy_type : string option; [@option]  (** policy_type *)
  resource_locations : string list option; [@option]
      (** resource_locations *)
  resource_types : string list option; [@option]
      (** resource_types *)
  target_tags : (string * string) list option; [@option]
      (** target_tags *)
  action : aws_dlm_lifecycle_policy__policy_details__action list;
  event_source :
    aws_dlm_lifecycle_policy__policy_details__event_source list;
  parameters :
    aws_dlm_lifecycle_policy__policy_details__parameters list;
  schedule : aws_dlm_lifecycle_policy__policy_details__schedule list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details *)

type aws_dlm_lifecycle_policy = {
  description : string;  (** description *)
  execution_role_arn : string;  (** execution_role_arn *)
  state : string option; [@option]  (** state *)
  tags : (string * string) list option; [@option]  (** tags *)
  policy_details : aws_dlm_lifecycle_policy__policy_details list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy *)

let aws_dlm_lifecycle_policy ?state ?tags ~description
    ~execution_role_arn ~policy_details __resource_id =
  let __resource_type = "aws_dlm_lifecycle_policy" in
  let __resource =
    { description; execution_role_arn; state; tags; policy_details }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dlm_lifecycle_policy __resource);
  ()
