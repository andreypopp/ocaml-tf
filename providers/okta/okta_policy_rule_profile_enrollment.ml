(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type profile_attributes = {
  label : string prop;
  name : string prop;
  required : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : profile_attributes) -> ()

let yojson_of_profile_attributes =
  (function
   | { label = v_label; name = v_name; required = v_required } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       `Assoc bnds
    : profile_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_profile_attributes

[@@@deriving.end]

type okta_policy_rule_profile_enrollment = {
  access : string prop option; [@option]
  email_verification : bool prop option; [@option]
  id : string prop option; [@option]
  inline_hook_id : string prop option; [@option]
  policy_id : string prop;
  progressive_profiling_action : string prop option; [@option]
  target_group_id : string prop option; [@option]
  ui_schema_id : string prop option; [@option]
  unknown_user_action : string prop;
  profile_attributes : profile_attributes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_rule_profile_enrollment) -> ()

let yojson_of_okta_policy_rule_profile_enrollment =
  (function
   | {
       access = v_access;
       email_verification = v_email_verification;
       id = v_id;
       inline_hook_id = v_inline_hook_id;
       policy_id = v_policy_id;
       progressive_profiling_action = v_progressive_profiling_action;
       target_group_id = v_target_group_id;
       ui_schema_id = v_ui_schema_id;
       unknown_user_action = v_unknown_user_action;
       profile_attributes = v_profile_attributes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_profile_attributes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_profile_attributes)
               v_profile_attributes
           in
           let bnd = "profile_attributes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_unknown_user_action
         in
         ("unknown_user_action", arg) :: bnds
       in
       let bnds =
         match v_ui_schema_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ui_schema_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_progressive_profiling_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "progressive_profiling_action", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
       in
       let bnds =
         match v_inline_hook_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inline_hook_id", arg in
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
         match v_email_verification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "email_verification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_policy_rule_profile_enrollment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_rule_profile_enrollment

[@@@deriving.end]

let profile_attributes ?required ~label ~name () : profile_attributes
    =
  { label; name; required }

let okta_policy_rule_profile_enrollment ?access ?email_verification
    ?id ?inline_hook_id ?progressive_profiling_action
    ?target_group_id ?ui_schema_id ?(profile_attributes = [])
    ~policy_id ~unknown_user_action () :
    okta_policy_rule_profile_enrollment =
  {
    access;
    email_verification;
    id;
    inline_hook_id;
    policy_id;
    progressive_profiling_action;
    target_group_id;
    ui_schema_id;
    unknown_user_action;
    profile_attributes;
  }

type t = {
  tf_name : string;
  access : string prop;
  email_verification : bool prop;
  id : string prop;
  inline_hook_id : string prop;
  name : string prop;
  policy_id : string prop;
  progressive_profiling_action : string prop;
  status : string prop;
  target_group_id : string prop;
  ui_schema_id : string prop;
  unknown_user_action : string prop;
}

let make ?access ?email_verification ?id ?inline_hook_id
    ?progressive_profiling_action ?target_group_id ?ui_schema_id
    ?(profile_attributes = []) ~policy_id ~unknown_user_action __id =
  let __type = "okta_policy_rule_profile_enrollment" in
  let __attrs =
    ({
       tf_name = __id;
       access = Prop.computed __type __id "access";
       email_verification =
         Prop.computed __type __id "email_verification";
       id = Prop.computed __type __id "id";
       inline_hook_id = Prop.computed __type __id "inline_hook_id";
       name = Prop.computed __type __id "name";
       policy_id = Prop.computed __type __id "policy_id";
       progressive_profiling_action =
         Prop.computed __type __id "progressive_profiling_action";
       status = Prop.computed __type __id "status";
       target_group_id = Prop.computed __type __id "target_group_id";
       ui_schema_id = Prop.computed __type __id "ui_schema_id";
       unknown_user_action =
         Prop.computed __type __id "unknown_user_action";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_rule_profile_enrollment
        (okta_policy_rule_profile_enrollment ?access
           ?email_verification ?id ?inline_hook_id
           ?progressive_profiling_action ?target_group_id
           ?ui_schema_id ~profile_attributes ~policy_id
           ~unknown_user_action ());
    attrs = __attrs;
  }

let register ?tf_module ?access ?email_verification ?id
    ?inline_hook_id ?progressive_profiling_action ?target_group_id
    ?ui_schema_id ?(profile_attributes = []) ~policy_id
    ~unknown_user_action __id =
  let (r : _ Tf_core.resource) =
    make ?access ?email_verification ?id ?inline_hook_id
      ?progressive_profiling_action ?target_group_id ?ui_schema_id
      ~profile_attributes ~policy_id ~unknown_user_action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
