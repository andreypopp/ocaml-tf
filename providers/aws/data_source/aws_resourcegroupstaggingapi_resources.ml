(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tag_filter = {
  key : string prop;
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tag_filter) -> ()

let yojson_of_tag_filter =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : tag_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tag_filter

[@@@deriving.end]

type resource_tag_mapping_list__compliance_details = {
  compliance_status : bool prop;
  keys_with_noncompliant_values : string prop list;
  non_compliant_keys : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_tag_mapping_list__compliance_details) -> ()

let yojson_of_resource_tag_mapping_list__compliance_details =
  (function
   | {
       compliance_status = v_compliance_status;
       keys_with_noncompliant_values =
         v_keys_with_noncompliant_values;
       non_compliant_keys = v_non_compliant_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_non_compliant_keys
         in
         ("non_compliant_keys", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_keys_with_noncompliant_values
         in
         ("keys_with_noncompliant_values", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_compliance_status
         in
         ("compliance_status", arg) :: bnds
       in
       `Assoc bnds
    : resource_tag_mapping_list__compliance_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_tag_mapping_list__compliance_details

[@@@deriving.end]

type resource_tag_mapping_list = {
  compliance_details :
    resource_tag_mapping_list__compliance_details list;
  resource_arn : string prop;
  tags : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_tag_mapping_list) -> ()

let yojson_of_resource_tag_mapping_list =
  (function
   | {
       compliance_details = v_compliance_details;
       resource_arn = v_resource_arn;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_resource_tag_mapping_list__compliance_details
             v_compliance_details
         in
         ("compliance_details", arg) :: bnds
       in
       `Assoc bnds
    : resource_tag_mapping_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_tag_mapping_list

[@@@deriving.end]

type aws_resourcegroupstaggingapi_resources = {
  exclude_compliant_resources : bool prop option; [@option]
  id : string prop option; [@option]
  include_compliance_details : bool prop option; [@option]
  resource_arn_list : string prop list option; [@option]
  resource_type_filters : string prop list option; [@option]
  tag_filter : tag_filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_resourcegroupstaggingapi_resources) -> ()

let yojson_of_aws_resourcegroupstaggingapi_resources =
  (function
   | {
       exclude_compliant_resources = v_exclude_compliant_resources;
       id = v_id;
       include_compliance_details = v_include_compliance_details;
       resource_arn_list = v_resource_arn_list;
       resource_type_filters = v_resource_type_filters;
       tag_filter = v_tag_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_tag_filter v_tag_filter
         in
         ("tag_filter", arg) :: bnds
       in
       let bnds =
         match v_resource_type_filters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_type_filters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_arn_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_arn_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_compliance_details with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_compliance_details", arg in
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
         match v_exclude_compliant_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_compliant_resources", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_resourcegroupstaggingapi_resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_resourcegroupstaggingapi_resources

[@@@deriving.end]

let tag_filter ?values ~key () : tag_filter = { key; values }

let aws_resourcegroupstaggingapi_resources
    ?exclude_compliant_resources ?id ?include_compliance_details
    ?resource_arn_list ?resource_type_filters ~tag_filter () :
    aws_resourcegroupstaggingapi_resources =
  {
    exclude_compliant_resources;
    id;
    include_compliance_details;
    resource_arn_list;
    resource_type_filters;
    tag_filter;
  }

type t = {
  exclude_compliant_resources : bool prop;
  id : string prop;
  include_compliance_details : bool prop;
  resource_arn_list : string list prop;
  resource_tag_mapping_list : resource_tag_mapping_list list prop;
  resource_type_filters : string list prop;
}

let make ?exclude_compliant_resources ?id ?include_compliance_details
    ?resource_arn_list ?resource_type_filters ~tag_filter __id =
  let __type = "aws_resourcegroupstaggingapi_resources" in
  let __attrs =
    ({
       exclude_compliant_resources =
         Prop.computed __type __id "exclude_compliant_resources";
       id = Prop.computed __type __id "id";
       include_compliance_details =
         Prop.computed __type __id "include_compliance_details";
       resource_arn_list =
         Prop.computed __type __id "resource_arn_list";
       resource_tag_mapping_list =
         Prop.computed __type __id "resource_tag_mapping_list";
       resource_type_filters =
         Prop.computed __type __id "resource_type_filters";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_resourcegroupstaggingapi_resources
        (aws_resourcegroupstaggingapi_resources
           ?exclude_compliant_resources ?id
           ?include_compliance_details ?resource_arn_list
           ?resource_type_filters ~tag_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?exclude_compliant_resources ?id
    ?include_compliance_details ?resource_arn_list
    ?resource_type_filters ~tag_filter __id =
  let (r : _ Tf_core.resource) =
    make ?exclude_compliant_resources ?id ?include_compliance_details
      ?resource_arn_list ?resource_type_filters ~tag_filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
