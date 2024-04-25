(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type approval_rule__patch_filter = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : approval_rule__patch_filter) -> ()

let yojson_of_approval_rule__patch_filter =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : approval_rule__patch_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_approval_rule__patch_filter

[@@@deriving.end]

type approval_rule = {
  approve_after_days : float prop option; [@option]
  approve_until_date : string prop option; [@option]
  compliance_level : string prop option; [@option]
  enable_non_security : bool prop option; [@option]
  patch_filter : approval_rule__patch_filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : approval_rule) -> ()

let yojson_of_approval_rule =
  (function
   | {
       approve_after_days = v_approve_after_days;
       approve_until_date = v_approve_until_date;
       compliance_level = v_compliance_level;
       enable_non_security = v_enable_non_security;
       patch_filter = v_patch_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_approval_rule__patch_filter
             v_patch_filter
         in
         ("patch_filter", arg) :: bnds
       in
       let bnds =
         match v_enable_non_security with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_non_security", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compliance_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compliance_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_approve_until_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "approve_until_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_approve_after_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "approve_after_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : approval_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_approval_rule

[@@@deriving.end]

type global_filter = { key : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : global_filter) -> ()

let yojson_of_global_filter =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : global_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_filter

[@@@deriving.end]

type source = {
  configuration : string prop;
  name : string prop;
  products : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       configuration = v_configuration;
       name = v_name;
       products = v_products;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_products
         in
         ("products", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_configuration in
         ("configuration", arg) :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type aws_ssm_patch_baseline = {
  approved_patches : string prop list option; [@option]
  approved_patches_compliance_level : string prop option; [@option]
  approved_patches_enable_non_security : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  operating_system : string prop option; [@option]
  rejected_patches : string prop list option; [@option]
  rejected_patches_action : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  approval_rule : approval_rule list;
  global_filter : global_filter list;
  source : source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_patch_baseline) -> ()

let yojson_of_aws_ssm_patch_baseline =
  (function
   | {
       approved_patches = v_approved_patches;
       approved_patches_compliance_level =
         v_approved_patches_compliance_level;
       approved_patches_enable_non_security =
         v_approved_patches_enable_non_security;
       description = v_description;
       id = v_id;
       name = v_name;
       operating_system = v_operating_system;
       rejected_patches = v_rejected_patches;
       rejected_patches_action = v_rejected_patches_action;
       tags = v_tags;
       tags_all = v_tags_all;
       approval_rule = v_approval_rule;
       global_filter = v_global_filter;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_source v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_global_filter v_global_filter
         in
         ("global_filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_approval_rule v_approval_rule
         in
         ("approval_rule", arg) :: bnds
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
         match v_rejected_patches_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rejected_patches_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rejected_patches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "rejected_patches", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operating_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operating_system", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_approved_patches_enable_non_security with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "approved_patches_enable_non_security", arg in
             bnd :: bnds
       in
       let bnds =
         match v_approved_patches_compliance_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "approved_patches_compliance_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_approved_patches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "approved_patches", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssm_patch_baseline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_patch_baseline

[@@@deriving.end]

let approval_rule__patch_filter ~key ~values () :
    approval_rule__patch_filter =
  { key; values }

let approval_rule ?approve_after_days ?approve_until_date
    ?compliance_level ?enable_non_security ~patch_filter () :
    approval_rule =
  {
    approve_after_days;
    approve_until_date;
    compliance_level;
    enable_non_security;
    patch_filter;
  }

let global_filter ~key ~values () : global_filter = { key; values }

let source ~configuration ~name ~products () : source =
  { configuration; name; products }

let aws_ssm_patch_baseline ?approved_patches
    ?approved_patches_compliance_level
    ?approved_patches_enable_non_security ?description ?id
    ?operating_system ?rejected_patches ?rejected_patches_action
    ?tags ?tags_all ?(approval_rule = []) ?(global_filter = [])
    ?(source = []) ~name () : aws_ssm_patch_baseline =
  {
    approved_patches;
    approved_patches_compliance_level;
    approved_patches_enable_non_security;
    description;
    id;
    name;
    operating_system;
    rejected_patches;
    rejected_patches_action;
    tags;
    tags_all;
    approval_rule;
    global_filter;
    source;
  }

type t = {
  approved_patches : string list prop;
  approved_patches_compliance_level : string prop;
  approved_patches_enable_non_security : bool prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  json : string prop;
  name : string prop;
  operating_system : string prop;
  rejected_patches : string list prop;
  rejected_patches_action : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?approved_patches ?approved_patches_compliance_level
    ?approved_patches_enable_non_security ?description ?id
    ?operating_system ?rejected_patches ?rejected_patches_action
    ?tags ?tags_all ?(approval_rule = []) ?(global_filter = [])
    ?(source = []) ~name __id =
  let __type = "aws_ssm_patch_baseline" in
  let __attrs =
    ({
       approved_patches =
         Prop.computed __type __id "approved_patches";
       approved_patches_compliance_level =
         Prop.computed __type __id
           "approved_patches_compliance_level";
       approved_patches_enable_non_security =
         Prop.computed __type __id
           "approved_patches_enable_non_security";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       json = Prop.computed __type __id "json";
       name = Prop.computed __type __id "name";
       operating_system =
         Prop.computed __type __id "operating_system";
       rejected_patches =
         Prop.computed __type __id "rejected_patches";
       rejected_patches_action =
         Prop.computed __type __id "rejected_patches_action";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_patch_baseline
        (aws_ssm_patch_baseline ?approved_patches
           ?approved_patches_compliance_level
           ?approved_patches_enable_non_security ?description ?id
           ?operating_system ?rejected_patches
           ?rejected_patches_action ?tags ?tags_all ~approval_rule
           ~global_filter ~source ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?approved_patches
    ?approved_patches_compliance_level
    ?approved_patches_enable_non_security ?description ?id
    ?operating_system ?rejected_patches ?rejected_patches_action
    ?tags ?tags_all ?(approval_rule = []) ?(global_filter = [])
    ?(source = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?approved_patches ?approved_patches_compliance_level
      ?approved_patches_enable_non_security ?description ?id
      ?operating_system ?rejected_patches ?rejected_patches_action
      ?tags ?tags_all ~approval_rule ~global_filter ~source ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
