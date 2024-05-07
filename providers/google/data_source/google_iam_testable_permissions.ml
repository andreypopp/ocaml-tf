(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permissions = {
  api_disabled : bool prop;
  custom_support_level : string prop;
  name : string prop;
  stage : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permissions) -> ()

let yojson_of_permissions =
  (function
   | {
       api_disabled = v_api_disabled;
       custom_support_level = v_custom_support_level;
       name = v_name;
       stage = v_stage;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stage in
         ("stage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_support_level
         in
         ("custom_support_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_api_disabled in
         ("api_disabled", arg) :: bnds
       in
       `Assoc bnds
    : permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permissions

[@@@deriving.end]

type google_iam_testable_permissions = {
  custom_support_level : string prop option; [@option]
  full_resource_name : string prop;
  id : string prop option; [@option]
  stages : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iam_testable_permissions) -> ()

let yojson_of_google_iam_testable_permissions =
  (function
   | {
       custom_support_level = v_custom_support_level;
       full_resource_name = v_full_resource_name;
       id = v_id;
       stages = v_stages;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_stages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "stages", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_full_resource_name
         in
         ("full_resource_name", arg) :: bnds
       in
       let bnds =
         match v_custom_support_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_support_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_iam_testable_permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iam_testable_permissions

[@@@deriving.end]

let google_iam_testable_permissions ?custom_support_level ?id ?stages
    ~full_resource_name () : google_iam_testable_permissions =
  { custom_support_level; full_resource_name; id; stages }

type t = {
  tf_name : string;
  custom_support_level : string prop;
  full_resource_name : string prop;
  id : string prop;
  permissions : permissions list prop;
  stages : string list prop;
}

let make ?custom_support_level ?id ?stages ~full_resource_name __id =
  let __type = "google_iam_testable_permissions" in
  let __attrs =
    ({
       tf_name = __id;
       custom_support_level =
         Prop.computed __type __id "custom_support_level";
       full_resource_name =
         Prop.computed __type __id "full_resource_name";
       id = Prop.computed __type __id "id";
       permissions = Prop.computed __type __id "permissions";
       stages = Prop.computed __type __id "stages";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iam_testable_permissions
        (google_iam_testable_permissions ?custom_support_level ?id
           ?stages ~full_resource_name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_support_level ?id ?stages
    ~full_resource_name __id =
  let (r : _ Tf_core.resource) =
    make ?custom_support_level ?id ?stages ~full_resource_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
