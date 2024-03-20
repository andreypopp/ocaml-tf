(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kms_key *)

let timeouts ?create () : timeouts = { create }

let aws_kms_key ?bypass_policy_lockout_safety_check
    ?custom_key_store_id ?customer_master_key_spec
    ?deletion_window_in_days ?description ?enable_key_rotation ?id
    ?is_enabled ?key_usage ?multi_region ?policy ?tags ?tags_all
    ?xks_key_id ?timeouts () : aws_kms_key =
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

type t = {
  arn : string prop;
  bypass_policy_lockout_safety_check : bool prop;
  custom_key_store_id : string prop;
  customer_master_key_spec : string prop;
  deletion_window_in_days : float prop;
  description : string prop;
  enable_key_rotation : bool prop;
  id : string prop;
  is_enabled : bool prop;
  key_id : string prop;
  key_usage : string prop;
  multi_region : bool prop;
  policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  xks_key_id : string prop;
}

let make ?bypass_policy_lockout_safety_check ?custom_key_store_id
    ?customer_master_key_spec ?deletion_window_in_days ?description
    ?enable_key_rotation ?id ?is_enabled ?key_usage ?multi_region
    ?policy ?tags ?tags_all ?xks_key_id ?timeouts __id =
  let __type = "aws_kms_key" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bypass_policy_lockout_safety_check =
         Prop.computed __type __id
           "bypass_policy_lockout_safety_check";
       custom_key_store_id =
         Prop.computed __type __id "custom_key_store_id";
       customer_master_key_spec =
         Prop.computed __type __id "customer_master_key_spec";
       deletion_window_in_days =
         Prop.computed __type __id "deletion_window_in_days";
       description = Prop.computed __type __id "description";
       enable_key_rotation =
         Prop.computed __type __id "enable_key_rotation";
       id = Prop.computed __type __id "id";
       is_enabled = Prop.computed __type __id "is_enabled";
       key_id = Prop.computed __type __id "key_id";
       key_usage = Prop.computed __type __id "key_usage";
       multi_region = Prop.computed __type __id "multi_region";
       policy = Prop.computed __type __id "policy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       xks_key_id = Prop.computed __type __id "xks_key_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_key
        (aws_kms_key ?bypass_policy_lockout_safety_check
           ?custom_key_store_id ?customer_master_key_spec
           ?deletion_window_in_days ?description ?enable_key_rotation
           ?id ?is_enabled ?key_usage ?multi_region ?policy ?tags
           ?tags_all ?xks_key_id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_policy_lockout_safety_check
    ?custom_key_store_id ?customer_master_key_spec
    ?deletion_window_in_days ?description ?enable_key_rotation ?id
    ?is_enabled ?key_usage ?multi_region ?policy ?tags ?tags_all
    ?xks_key_id ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_policy_lockout_safety_check ?custom_key_store_id
      ?customer_master_key_spec ?deletion_window_in_days ?description
      ?enable_key_rotation ?id ?is_enabled ?key_usage ?multi_region
      ?policy ?tags ?tags_all ?xks_key_id ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
