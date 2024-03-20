(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_kms_key = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
  custom_key_store_id : string prop option; [@option]
  customer_master_key_spec : string prop option; [@option]
  deletion_window_in_days : float prop option; [@option]
  description : string prop option; [@option]
  enable_key_rotation : bool prop option; [@option]
  id : string prop option; [@option]
  is_enabled : bool prop option; [@option]
  key_usage : string prop option; [@option]
  multi_region : bool prop option; [@option]
  policy : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  xks_key_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_key) -> ()

let yojson_of_aws_kms_key =
  (function
   | {
       bypass_policy_lockout_safety_check =
         v_bypass_policy_lockout_safety_check;
       custom_key_store_id = v_custom_key_store_id;
       customer_master_key_spec = v_customer_master_key_spec;
       deletion_window_in_days = v_deletion_window_in_days;
       description = v_description;
       enable_key_rotation = v_enable_key_rotation;
       id = v_id;
       is_enabled = v_is_enabled;
       key_usage = v_key_usage;
       multi_region = v_multi_region;
       policy = v_policy;
       tags = v_tags;
       tags_all = v_tags_all;
       xks_key_id = v_xks_key_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_xks_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "xks_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_multi_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_usage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_usage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_key_rotation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_key_rotation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_window_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "deletion_window_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_master_key_spec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_master_key_spec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_key_store_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_key_store_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bypass_policy_lockout_safety_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bypass_policy_lockout_safety_check", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kms_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_key

[@@@deriving.end]

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
