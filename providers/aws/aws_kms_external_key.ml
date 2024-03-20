(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_external_key = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
  deletion_window_in_days : float prop option; [@option]
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  key_material_base64 : string prop option; [@option]
  multi_region : bool prop option; [@option]
  policy : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  valid_to : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_external_key) -> ()

let yojson_of_aws_kms_external_key =
  (function
   | {
       bypass_policy_lockout_safety_check =
         v_bypass_policy_lockout_safety_check;
       deletion_window_in_days = v_deletion_window_in_days;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       key_material_base64 = v_key_material_base64;
       multi_region = v_multi_region;
       policy = v_policy;
       tags = v_tags;
       tags_all = v_tags_all;
       valid_to = v_valid_to;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_valid_to with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "valid_to", arg in
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
         match v_key_material_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_material_base64", arg in
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
    : aws_kms_external_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_external_key

[@@@deriving.end]

let aws_kms_external_key ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id
    ?key_material_base64 ?multi_region ?policy ?tags ?tags_all
    ?valid_to () : aws_kms_external_key =
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

type t = {
  arn : string prop;
  bypass_policy_lockout_safety_check : bool prop;
  deletion_window_in_days : float prop;
  description : string prop;
  enabled : bool prop;
  expiration_model : string prop;
  id : string prop;
  key_material_base64 : string prop;
  key_state : string prop;
  key_usage : string prop;
  multi_region : bool prop;
  policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  valid_to : string prop;
}

let make ?bypass_policy_lockout_safety_check ?deletion_window_in_days
    ?description ?enabled ?id ?key_material_base64 ?multi_region
    ?policy ?tags ?tags_all ?valid_to __id =
  let __type = "aws_kms_external_key" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bypass_policy_lockout_safety_check =
         Prop.computed __type __id
           "bypass_policy_lockout_safety_check";
       deletion_window_in_days =
         Prop.computed __type __id "deletion_window_in_days";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       expiration_model =
         Prop.computed __type __id "expiration_model";
       id = Prop.computed __type __id "id";
       key_material_base64 =
         Prop.computed __type __id "key_material_base64";
       key_state = Prop.computed __type __id "key_state";
       key_usage = Prop.computed __type __id "key_usage";
       multi_region = Prop.computed __type __id "multi_region";
       policy = Prop.computed __type __id "policy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       valid_to = Prop.computed __type __id "valid_to";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_external_key
        (aws_kms_external_key ?bypass_policy_lockout_safety_check
           ?deletion_window_in_days ?description ?enabled ?id
           ?key_material_base64 ?multi_region ?policy ?tags ?tags_all
           ?valid_to ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id
    ?key_material_base64 ?multi_region ?policy ?tags ?tags_all
    ?valid_to __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_policy_lockout_safety_check ?deletion_window_in_days
      ?description ?enabled ?id ?key_material_base64 ?multi_region
      ?policy ?tags ?tags_all ?valid_to __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
