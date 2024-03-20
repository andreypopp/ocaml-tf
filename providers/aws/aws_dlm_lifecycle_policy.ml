(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_details__action__cross_region_copy__encryption_configuration = {
  cmk_arn : string prop option; [@option]  (** cmk_arn *)
  encrypted : bool prop option; [@option]  (** encrypted *)
}
[@@deriving yojson_of]
(** policy_details__action__cross_region_copy__encryption_configuration *)

type policy_details__action__cross_region_copy__retain_rule = {
  interval : float prop;  (** interval *)
  interval_unit : string prop;  (** interval_unit *)
}
[@@deriving yojson_of]
(** policy_details__action__cross_region_copy__retain_rule *)

type policy_details__action__cross_region_copy = {
  target : string prop;  (** target *)
  encryption_configuration :
    policy_details__action__cross_region_copy__encryption_configuration
    list;
  retain_rule :
    policy_details__action__cross_region_copy__retain_rule list;
}
[@@deriving yojson_of]
(** policy_details__action__cross_region_copy *)

type policy_details__action = {
  name : string prop;  (** name *)
  cross_region_copy : policy_details__action__cross_region_copy list;
}
[@@deriving yojson_of]
(** policy_details__action *)

type policy_details__event_source__parameters = {
  description_regex : string prop;  (** description_regex *)
  event_type : string prop;  (** event_type *)
  snapshot_owner : string prop list;  (** snapshot_owner *)
}
[@@deriving yojson_of]
(** policy_details__event_source__parameters *)

type policy_details__event_source = {
  type_ : string prop; [@key "type"]  (** type *)
  parameters : policy_details__event_source__parameters list;
}
[@@deriving yojson_of]
(** policy_details__event_source *)

type policy_details__parameters = {
  exclude_boot_volume : bool prop option; [@option]
      (** exclude_boot_volume *)
  no_reboot : bool prop option; [@option]  (** no_reboot *)
}
[@@deriving yojson_of]
(** policy_details__parameters *)

type policy_details__schedule__create_rule = {
  cron_expression : string prop option; [@option]
      (** cron_expression *)
  interval : float prop option; [@option]  (** interval *)
  interval_unit : string prop option; [@option]  (** interval_unit *)
  location : string prop option; [@option]  (** location *)
  times : string prop list option; [@option]  (** times *)
}
[@@deriving yojson_of]
(** policy_details__schedule__create_rule *)

type policy_details__schedule__cross_region_copy_rule__deprecate_rule = {
  interval : float prop;  (** interval *)
  interval_unit : string prop;  (** interval_unit *)
}
[@@deriving yojson_of]
(** policy_details__schedule__cross_region_copy_rule__deprecate_rule *)

type policy_details__schedule__cross_region_copy_rule__retain_rule = {
  interval : float prop;  (** interval *)
  interval_unit : string prop;  (** interval_unit *)
}
[@@deriving yojson_of]
(** policy_details__schedule__cross_region_copy_rule__retain_rule *)

type policy_details__schedule__cross_region_copy_rule = {
  cmk_arn : string prop option; [@option]  (** cmk_arn *)
  copy_tags : bool prop option; [@option]  (** copy_tags *)
  encrypted : bool prop;  (** encrypted *)
  target : string prop;  (** target *)
  deprecate_rule :
    policy_details__schedule__cross_region_copy_rule__deprecate_rule
    list;
  retain_rule :
    policy_details__schedule__cross_region_copy_rule__retain_rule
    list;
}
[@@deriving yojson_of]
(** policy_details__schedule__cross_region_copy_rule *)

type policy_details__schedule__deprecate_rule = {
  count : float prop option; [@option]  (** count *)
  interval : float prop option; [@option]  (** interval *)
  interval_unit : string prop option; [@option]  (** interval_unit *)
}
[@@deriving yojson_of]
(** policy_details__schedule__deprecate_rule *)

type policy_details__schedule__fast_restore_rule = {
  availability_zones : string prop list;  (** availability_zones *)
  count : float prop option; [@option]  (** count *)
  interval : float prop option; [@option]  (** interval *)
  interval_unit : string prop option; [@option]  (** interval_unit *)
}
[@@deriving yojson_of]
(** policy_details__schedule__fast_restore_rule *)

type policy_details__schedule__retain_rule = {
  count : float prop option; [@option]  (** count *)
  interval : float prop option; [@option]  (** interval *)
  interval_unit : string prop option; [@option]  (** interval_unit *)
}
[@@deriving yojson_of]
(** policy_details__schedule__retain_rule *)

type policy_details__schedule__share_rule = {
  target_accounts : string prop list;  (** target_accounts *)
  unshare_interval : float prop option; [@option]
      (** unshare_interval *)
  unshare_interval_unit : string prop option; [@option]
      (** unshare_interval_unit *)
}
[@@deriving yojson_of]
(** policy_details__schedule__share_rule *)

type policy_details__schedule = {
  copy_tags : bool prop option; [@option]  (** copy_tags *)
  name : string prop;  (** name *)
  tags_to_add : (string * string prop) list option; [@option]
      (** tags_to_add *)
  variable_tags : (string * string prop) list option; [@option]
      (** variable_tags *)
  create_rule : policy_details__schedule__create_rule list;
  cross_region_copy_rule :
    policy_details__schedule__cross_region_copy_rule list;
  deprecate_rule : policy_details__schedule__deprecate_rule list;
  fast_restore_rule :
    policy_details__schedule__fast_restore_rule list;
  retain_rule : policy_details__schedule__retain_rule list;
  share_rule : policy_details__schedule__share_rule list;
}
[@@deriving yojson_of]
(** policy_details__schedule *)

type policy_details = {
  policy_type : string prop option; [@option]  (** policy_type *)
  resource_locations : string prop list option; [@option]
      (** resource_locations *)
  resource_types : string prop list option; [@option]
      (** resource_types *)
  target_tags : (string * string prop) list option; [@option]
      (** target_tags *)
  action : policy_details__action list;
  event_source : policy_details__event_source list;
  parameters : policy_details__parameters list;
  schedule : policy_details__schedule list;
}
[@@deriving yojson_of]
(** policy_details *)

type aws_dlm_lifecycle_policy = {
  description : string prop;  (** description *)
  execution_role_arn : string prop;  (** execution_role_arn *)
  id : string prop option; [@option]  (** id *)
  state : string prop option; [@option]  (** state *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  policy_details : policy_details list;
}
[@@deriving yojson_of]
(** aws_dlm_lifecycle_policy *)

let policy_details__action__cross_region_copy__encryption_configuration
    ?cmk_arn ?encrypted () :
    policy_details__action__cross_region_copy__encryption_configuration
    =
  { cmk_arn; encrypted }

let policy_details__action__cross_region_copy__retain_rule ~interval
    ~interval_unit () :
    policy_details__action__cross_region_copy__retain_rule =
  { interval; interval_unit }

let policy_details__action__cross_region_copy ~target
    ~encryption_configuration ~retain_rule () :
    policy_details__action__cross_region_copy =
  { target; encryption_configuration; retain_rule }

let policy_details__action ~name ~cross_region_copy () :
    policy_details__action =
  { name; cross_region_copy }

let policy_details__event_source__parameters ~description_regex
    ~event_type ~snapshot_owner () :
    policy_details__event_source__parameters =
  { description_regex; event_type; snapshot_owner }

let policy_details__event_source ~type_ ~parameters () :
    policy_details__event_source =
  { type_; parameters }

let policy_details__parameters ?exclude_boot_volume ?no_reboot () :
    policy_details__parameters =
  { exclude_boot_volume; no_reboot }

let policy_details__schedule__create_rule ?cron_expression ?interval
    ?interval_unit ?location ?times () :
    policy_details__schedule__create_rule =
  { cron_expression; interval; interval_unit; location; times }

let policy_details__schedule__cross_region_copy_rule__deprecate_rule
    ~interval ~interval_unit () :
    policy_details__schedule__cross_region_copy_rule__deprecate_rule
    =
  { interval; interval_unit }

let policy_details__schedule__cross_region_copy_rule__retain_rule
    ~interval ~interval_unit () :
    policy_details__schedule__cross_region_copy_rule__retain_rule =
  { interval; interval_unit }

let policy_details__schedule__cross_region_copy_rule ?cmk_arn
    ?copy_tags ~encrypted ~target ~deprecate_rule ~retain_rule () :
    policy_details__schedule__cross_region_copy_rule =
  {
    cmk_arn;
    copy_tags;
    encrypted;
    target;
    deprecate_rule;
    retain_rule;
  }

let policy_details__schedule__deprecate_rule ?count ?interval
    ?interval_unit () : policy_details__schedule__deprecate_rule =
  { count; interval; interval_unit }

let policy_details__schedule__fast_restore_rule ?count ?interval
    ?interval_unit ~availability_zones () :
    policy_details__schedule__fast_restore_rule =
  { availability_zones; count; interval; interval_unit }

let policy_details__schedule__retain_rule ?count ?interval
    ?interval_unit () : policy_details__schedule__retain_rule =
  { count; interval; interval_unit }

let policy_details__schedule__share_rule ?unshare_interval
    ?unshare_interval_unit ~target_accounts () :
    policy_details__schedule__share_rule =
  { target_accounts; unshare_interval; unshare_interval_unit }

let policy_details__schedule ?copy_tags ?tags_to_add ?variable_tags
    ~name ~create_rule ~cross_region_copy_rule ~deprecate_rule
    ~fast_restore_rule ~retain_rule ~share_rule () :
    policy_details__schedule =
  {
    copy_tags;
    name;
    tags_to_add;
    variable_tags;
    create_rule;
    cross_region_copy_rule;
    deprecate_rule;
    fast_restore_rule;
    retain_rule;
    share_rule;
  }

let policy_details ?policy_type ?resource_locations ?resource_types
    ?target_tags ~action ~event_source ~parameters ~schedule () :
    policy_details =
  {
    policy_type;
    resource_locations;
    resource_types;
    target_tags;
    action;
    event_source;
    parameters;
    schedule;
  }

let aws_dlm_lifecycle_policy ?id ?state ?tags ?tags_all ~description
    ~execution_role_arn ~policy_details () : aws_dlm_lifecycle_policy
    =
  {
    description;
    execution_role_arn;
    id;
    state;
    tags;
    tags_all;
    policy_details;
  }

type t = {
  arn : string prop;
  description : string prop;
  execution_role_arn : string prop;
  id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?state ?tags ?tags_all ~description ~execution_role_arn
    ~policy_details __id =
  let __type = "aws_dlm_lifecycle_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       execution_role_arn =
         Prop.computed __type __id "execution_role_arn";
       id = Prop.computed __type __id "id";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dlm_lifecycle_policy
        (aws_dlm_lifecycle_policy ?id ?state ?tags ?tags_all
           ~description ~execution_role_arn ~policy_details ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?state ?tags ?tags_all ~description
    ~execution_role_arn ~policy_details __id =
  let (r : _ Tf_core.resource) =
    make ?id ?state ?tags ?tags_all ~description ~execution_role_arn
      ~policy_details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
