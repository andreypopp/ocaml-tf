(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter_group__filter = {
  exclude_matched_pattern : bool prop option; [@option]
  pattern : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter_group__filter) -> ()

let yojson_of_filter_group__filter =
  (function
   | {
       exclude_matched_pattern = v_exclude_matched_pattern;
       pattern = v_pattern;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_exclude_matched_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_matched_pattern", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter_group__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter_group__filter

[@@@deriving.end]

type filter_group = {
  filter : filter_group__filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter_group) -> ()

let yojson_of_filter_group =
  (function
   | { filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter_group__filter) v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : filter_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter_group

[@@@deriving.end]

type scope_configuration = {
  domain : string prop option; [@option]
  name : string prop;
  scope : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scope_configuration) -> ()

let yojson_of_scope_configuration =
  (function
   | { domain = v_domain; name = v_name; scope = v_scope } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scope_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scope_configuration

[@@@deriving.end]

type aws_codebuild_webhook = {
  branch_filter : string prop option; [@option]
  build_type : string prop option; [@option]
  id : string prop option; [@option]
  project_name : string prop;
  filter_group : filter_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scope_configuration : scope_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codebuild_webhook) -> ()

let yojson_of_aws_codebuild_webhook =
  (function
   | {
       branch_filter = v_branch_filter;
       build_type = v_build_type;
       id = v_id;
       project_name = v_project_name;
       filter_group = v_filter_group;
       scope_configuration = v_scope_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scope_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scope_configuration)
               v_scope_configuration
           in
           let bnd = "scope_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter_group) v_filter_group
           in
           let bnd = "filter_group", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_name in
         ("project_name", arg) :: bnds
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
         match v_build_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branch_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codebuild_webhook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codebuild_webhook

[@@@deriving.end]

let filter_group__filter ?exclude_matched_pattern ~pattern ~type_ ()
    : filter_group__filter =
  { exclude_matched_pattern; pattern; type_ }

let filter_group ?(filter = []) () : filter_group = { filter }

let scope_configuration ?domain ~name ~scope () : scope_configuration
    =
  { domain; name; scope }

let aws_codebuild_webhook ?branch_filter ?build_type ?id
    ?(scope_configuration = []) ~project_name ~filter_group () :
    aws_codebuild_webhook =
  {
    branch_filter;
    build_type;
    id;
    project_name;
    filter_group;
    scope_configuration;
  }

type t = {
  tf_name : string;
  branch_filter : string prop;
  build_type : string prop;
  id : string prop;
  payload_url : string prop;
  project_name : string prop;
  secret : string prop;
  url : string prop;
}

let make ?branch_filter ?build_type ?id ?(scope_configuration = [])
    ~project_name ~filter_group __id =
  let __type = "aws_codebuild_webhook" in
  let __attrs =
    ({
       tf_name = __id;
       branch_filter = Prop.computed __type __id "branch_filter";
       build_type = Prop.computed __type __id "build_type";
       id = Prop.computed __type __id "id";
       payload_url = Prop.computed __type __id "payload_url";
       project_name = Prop.computed __type __id "project_name";
       secret = Prop.computed __type __id "secret";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codebuild_webhook
        (aws_codebuild_webhook ?branch_filter ?build_type ?id
           ~scope_configuration ~project_name ~filter_group ());
    attrs = __attrs;
  }

let register ?tf_module ?branch_filter ?build_type ?id
    ?(scope_configuration = []) ~project_name ~filter_group __id =
  let (r : _ Tf_core.resource) =
    make ?branch_filter ?build_type ?id ~scope_configuration
      ~project_name ~filter_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
