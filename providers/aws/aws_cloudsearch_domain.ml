(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_options = {
  enforce_https : bool prop option; [@option]
  tls_security_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint_options) -> ()

let yojson_of_endpoint_options =
  (function
   | {
       enforce_https = v_enforce_https;
       tls_security_policy = v_tls_security_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tls_security_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_security_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforce_https with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce_https", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoint_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint_options

[@@@deriving.end]

type index_field = {
  analysis_scheme : string prop option; [@option]
  default_value : string prop option; [@option]
  facet : bool prop option; [@option]
  highlight : bool prop option; [@option]
  name : string prop;
  return : bool prop option; [@option]
  search : bool prop option; [@option]
  sort : bool prop option; [@option]
  source_fields : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : index_field) -> ()

let yojson_of_index_field =
  (function
   | {
       analysis_scheme = v_analysis_scheme;
       default_value = v_default_value;
       facet = v_facet;
       highlight = v_highlight;
       name = v_name;
       return = v_return;
       search = v_search;
       sort = v_sort;
       source_fields = v_source_fields;
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
         match v_source_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sort with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sort", arg in
             bnd :: bnds
       in
       let bnds =
         match v_search with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "search", arg in
             bnd :: bnds
       in
       let bnds =
         match v_return with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "return", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_highlight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "highlight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_facet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "facet", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_analysis_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "analysis_scheme", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : index_field -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index_field

[@@@deriving.end]

type scaling_parameters = {
  desired_instance_type : string prop option; [@option]
  desired_partition_count : float prop option; [@option]
  desired_replication_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scaling_parameters) -> ()

let yojson_of_scaling_parameters =
  (function
   | {
       desired_instance_type = v_desired_instance_type;
       desired_partition_count = v_desired_partition_count;
       desired_replication_count = v_desired_replication_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_desired_replication_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "desired_replication_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_partition_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "desired_partition_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "desired_instance_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scaling_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scaling_parameters

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
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

type aws_cloudsearch_domain = {
  id : string prop option; [@option]
  multi_az : bool prop option; [@option]
  name : string prop;
  endpoint_options : endpoint_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  index_field : index_field list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scaling_parameters : scaling_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudsearch_domain) -> ()

let yojson_of_aws_cloudsearch_domain =
  (function
   | {
       id = v_id;
       multi_az = v_multi_az;
       name = v_name;
       endpoint_options = v_endpoint_options;
       index_field = v_index_field;
       scaling_parameters = v_scaling_parameters;
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
         if Stdlib.( = ) [] v_scaling_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scaling_parameters)
               v_scaling_parameters
           in
           let bnd = "scaling_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_index_field then bnds
         else
           let arg =
             (yojson_of_list yojson_of_index_field) v_index_field
           in
           let bnd = "index_field", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_endpoint_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint_options)
               v_endpoint_options
           in
           let bnd = "endpoint_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_multi_az with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_az", arg in
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
       `Assoc bnds
    : aws_cloudsearch_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudsearch_domain

[@@@deriving.end]

let endpoint_options ?enforce_https ?tls_security_policy () :
    endpoint_options =
  { enforce_https; tls_security_policy }

let index_field ?analysis_scheme ?default_value ?facet ?highlight
    ?return ?search ?sort ?source_fields ~name ~type_ () :
    index_field =
  {
    analysis_scheme;
    default_value;
    facet;
    highlight;
    name;
    return;
    search;
    sort;
    source_fields;
    type_;
  }

let scaling_parameters ?desired_instance_type
    ?desired_partition_count ?desired_replication_count () :
    scaling_parameters =
  {
    desired_instance_type;
    desired_partition_count;
    desired_replication_count;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudsearch_domain ?id ?multi_az ?(endpoint_options = [])
    ?(scaling_parameters = []) ?timeouts ~name ~index_field () :
    aws_cloudsearch_domain =
  {
    id;
    multi_az;
    name;
    endpoint_options;
    index_field;
    scaling_parameters;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  document_service_endpoint : string prop;
  domain_id : string prop;
  id : string prop;
  multi_az : bool prop;
  name : string prop;
  search_service_endpoint : string prop;
}

let make ?id ?multi_az ?(endpoint_options = [])
    ?(scaling_parameters = []) ?timeouts ~name ~index_field __id =
  let __type = "aws_cloudsearch_domain" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       document_service_endpoint =
         Prop.computed __type __id "document_service_endpoint";
       domain_id = Prop.computed __type __id "domain_id";
       id = Prop.computed __type __id "id";
       multi_az = Prop.computed __type __id "multi_az";
       name = Prop.computed __type __id "name";
       search_service_endpoint =
         Prop.computed __type __id "search_service_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudsearch_domain
        (aws_cloudsearch_domain ?id ?multi_az ~endpoint_options
           ~scaling_parameters ?timeouts ~name ~index_field ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?multi_az ?(endpoint_options = [])
    ?(scaling_parameters = []) ?timeouts ~name ~index_field __id =
  let (r : _ Tf_core.resource) =
    make ?id ?multi_az ~endpoint_options ~scaling_parameters
      ?timeouts ~name ~index_field __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
