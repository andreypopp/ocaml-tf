(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_replica_key = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
  deletion_window_in_days : float prop option; [@option]
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  policy : string prop option; [@option]
  primary_key_arn : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_replica_key) -> ()

let yojson_of_aws_kms_replica_key =
  (function
   | {
       bypass_policy_lockout_safety_check =
         v_bypass_policy_lockout_safety_check;
       deletion_window_in_days = v_deletion_window_in_days;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       policy = v_policy;
       primary_key_arn = v_primary_key_arn;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_key_arn
         in
         ("primary_key_arn", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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
         match v_bypass_policy_lockout_safety_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bypass_policy_lockout_safety_check", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kms_replica_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_replica_key

[@@@deriving.end]

let aws_kms_replica_key ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id ?policy ?tags
    ?tags_all ~primary_key_arn () : aws_kms_replica_key =
  {
    bypass_policy_lockout_safety_check;
    deletion_window_in_days;
    description;
    enabled;
    id;
    policy;
    primary_key_arn;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  bypass_policy_lockout_safety_check : bool prop;
  deletion_window_in_days : float prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  key_id : string prop;
  key_rotation_enabled : bool prop;
  key_spec : string prop;
  key_usage : string prop;
  policy : string prop;
  primary_key_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?bypass_policy_lockout_safety_check ?deletion_window_in_days
    ?description ?enabled ?id ?policy ?tags ?tags_all
    ~primary_key_arn __id =
  let __type = "aws_kms_replica_key" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       bypass_policy_lockout_safety_check =
         Prop.computed __type __id
           "bypass_policy_lockout_safety_check";
       deletion_window_in_days =
         Prop.computed __type __id "deletion_window_in_days";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       key_rotation_enabled =
         Prop.computed __type __id "key_rotation_enabled";
       key_spec = Prop.computed __type __id "key_spec";
       key_usage = Prop.computed __type __id "key_usage";
       policy = Prop.computed __type __id "policy";
       primary_key_arn = Prop.computed __type __id "primary_key_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_replica_key
        (aws_kms_replica_key ?bypass_policy_lockout_safety_check
           ?deletion_window_in_days ?description ?enabled ?id ?policy
           ?tags ?tags_all ~primary_key_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id ?policy ?tags
    ?tags_all ~primary_key_arn __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_policy_lockout_safety_check ?deletion_window_in_days
      ?description ?enabled ?id ?policy ?tags ?tags_all
      ~primary_key_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
