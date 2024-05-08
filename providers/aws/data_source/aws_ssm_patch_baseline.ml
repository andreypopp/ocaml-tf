(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type approval_rule__patch_filter = {
  key : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
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
  approve_after_days : float prop;
  approve_until_date : string prop;
  compliance_level : string prop;
  enable_non_security : bool prop;
  patch_filter : approval_rule__patch_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_patch_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_approval_rule__patch_filter)
               v_patch_filter
           in
           let bnd = "patch_filter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_non_security
         in
         ("enable_non_security", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_compliance_level
         in
         ("compliance_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_approve_until_date
         in
         ("approve_until_date", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_approve_after_days
         in
         ("approve_after_days", arg) :: bnds
       in
       `Assoc bnds
    : approval_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_approval_rule

[@@@deriving.end]

type global_filter = {
  key : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global_filter) -> ()

let yojson_of_global_filter =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_products then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_products
           in
           let bnd = "products", arg in
           bnd :: bnds
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
  default_baseline : bool prop option; [@option]
  id : string prop option; [@option]
  name_prefix : string prop option; [@option]
  operating_system : string prop option; [@option]
  owner : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_patch_baseline) -> ()

let yojson_of_aws_ssm_patch_baseline =
  (function
   | {
       default_baseline = v_default_baseline;
       id = v_id;
       name_prefix = v_name_prefix;
       operating_system = v_operating_system;
       owner = v_owner;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
         match v_default_baseline with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_baseline", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssm_patch_baseline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_patch_baseline

[@@@deriving.end]

let aws_ssm_patch_baseline ?default_baseline ?id ?name_prefix
    ?operating_system ~owner () : aws_ssm_patch_baseline =
  { default_baseline; id; name_prefix; operating_system; owner }

type t = {
  tf_name : string;
  approval_rule : approval_rule list prop;
  approved_patches : string list prop;
  approved_patches_compliance_level : string prop;
  approved_patches_enable_non_security : bool prop;
  default_baseline : bool prop;
  description : string prop;
  global_filter : global_filter list prop;
  id : string prop;
  json : string prop;
  name : string prop;
  name_prefix : string prop;
  operating_system : string prop;
  owner : string prop;
  rejected_patches : string list prop;
  rejected_patches_action : string prop;
  source : source list prop;
}

let make ?default_baseline ?id ?name_prefix ?operating_system ~owner
    __id =
  let __type = "aws_ssm_patch_baseline" in
  let __attrs =
    ({
       tf_name = __id;
       approval_rule = Prop.computed __type __id "approval_rule";
       approved_patches =
         Prop.computed __type __id "approved_patches";
       approved_patches_compliance_level =
         Prop.computed __type __id
           "approved_patches_compliance_level";
       approved_patches_enable_non_security =
         Prop.computed __type __id
           "approved_patches_enable_non_security";
       default_baseline =
         Prop.computed __type __id "default_baseline";
       description = Prop.computed __type __id "description";
       global_filter = Prop.computed __type __id "global_filter";
       id = Prop.computed __type __id "id";
       json = Prop.computed __type __id "json";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       operating_system =
         Prop.computed __type __id "operating_system";
       owner = Prop.computed __type __id "owner";
       rejected_patches =
         Prop.computed __type __id "rejected_patches";
       rejected_patches_action =
         Prop.computed __type __id "rejected_patches_action";
       source = Prop.computed __type __id "source";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_patch_baseline
        (aws_ssm_patch_baseline ?default_baseline ?id ?name_prefix
           ?operating_system ~owner ());
    attrs = __attrs;
  }

let register ?tf_module ?default_baseline ?id ?name_prefix
    ?operating_system ~owner __id =
  let (r : _ Tf_core.resource) =
    make ?default_baseline ?id ?name_prefix ?operating_system ~owner
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
