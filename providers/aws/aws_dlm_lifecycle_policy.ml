(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__encryption_configuration = {
  cmk_arn : string prop option; [@option]  (** cmk_arn *)
  encrypted : bool prop option; [@option]  (** encrypted *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__encryption_configuration *)

type aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__retain_rule = {
  interval : float prop;  (** interval *)
  interval_unit : string prop;  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy__retain_rule *)

type aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy = {
  target : string prop;  (** target *)
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
  name : string prop;  (** name *)
  cross_region_copy :
    aws_dlm_lifecycle_policy__policy_details__action__cross_region_copy
    list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__action *)

type aws_dlm_lifecycle_policy__policy_details__event_source__parameters = {
  description_regex : string prop;  (** description_regex *)
  event_type : string prop;  (** event_type *)
  snapshot_owner : string prop list;  (** snapshot_owner *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__event_source__parameters *)

type aws_dlm_lifecycle_policy__policy_details__event_source = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters :
    aws_dlm_lifecycle_policy__policy_details__event_source__parameters
    list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__event_source *)

type aws_dlm_lifecycle_policy__policy_details__parameters = {
  exclude_boot_volume : bool prop option; [@option]
      (** exclude_boot_volume *)
  no_reboot : bool prop option; [@option]  (** no_reboot *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__parameters *)

type aws_dlm_lifecycle_policy__policy_details__schedule__create_rule = {
  cron_expression : string prop option; [@option]
      (** cron_expression *)
  interval : float prop option; [@option]  (** interval *)
  interval_unit : string prop option; [@option]  (** interval_unit *)
  location : string prop option; [@option]  (** location *)
  times : string prop list option; [@option]  (** times *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__create_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__deprecate_rule = {
  interval : float prop;  (** interval *)
  interval_unit : string prop;  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__deprecate_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__retain_rule = {
  interval : float prop;  (** interval *)
  interval_unit : string prop;  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule__retain_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__cross_region_copy_rule = {
  cmk_arn : string prop option; [@option]  (** cmk_arn *)
  copy_tags : bool prop option; [@option]  (** copy_tags *)
  encrypted : bool prop;  (** encrypted *)
  target : string prop;  (** target *)
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
  count : float prop option; [@option]  (** count *)
  interval : float prop option; [@option]  (** interval *)
  interval_unit : string prop option; [@option]  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__deprecate_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__fast_restore_rule = {
  availability_zones : string prop list;  (** availability_zones *)
  count : float prop option; [@option]  (** count *)
  interval : float prop option; [@option]  (** interval *)
  interval_unit : string prop option; [@option]  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__fast_restore_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__retain_rule = {
  count : float prop option; [@option]  (** count *)
  interval : float prop option; [@option]  (** interval *)
  interval_unit : string prop option; [@option]  (** interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__retain_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule__share_rule = {
  target_accounts : string prop list;  (** target_accounts *)
  unshare_interval : float prop option; [@option]
      (** unshare_interval *)
  unshare_interval_unit : string prop option; [@option]
      (** unshare_interval_unit *)
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy__policy_details__schedule__share_rule *)

type aws_dlm_lifecycle_policy__policy_details__schedule = {
  copy_tags : bool prop option; [@option]  (** copy_tags *)
  name : string prop;  (** name *)
  tags_to_add : (string * string prop) list option; [@option]
      (** tags_to_add *)
  variable_tags : (string * string prop) list option; [@option]
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
  policy_type : string prop option; [@option]  (** policy_type *)
  resource_locations : string prop list option; [@option]
      (** resource_locations *)
  resource_types : string prop list option; [@option]
      (** resource_types *)
  target_tags : (string * string prop) list option; [@option]
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
  description : string prop;  (** description *)
  execution_role_arn : string prop;  (** execution_role_arn *)
  id : string prop option; [@option]  (** id *)
  state : string prop option; [@option]  (** state *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  policy_details : aws_dlm_lifecycle_policy__policy_details list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy *)

type t = {
  arn : string prop;
  description : string prop;
  execution_role_arn : string prop;
  id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_dlm_lifecycle_policy ?id ?state ?tags ?tags_all ~description
    ~execution_role_arn ~policy_details __resource_id =
  let __resource_type = "aws_dlm_lifecycle_policy" in
  let __resource =
    ({
       description;
       execution_role_arn;
       id;
       state;
       tags;
       tags_all;
       policy_details;
     }
      : aws_dlm_lifecycle_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dlm_lifecycle_policy __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       execution_role_arn =
         Prop.computed __resource_type __resource_id
           "execution_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
