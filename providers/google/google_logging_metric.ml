(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bucket_options__explicit_buckets = { bounds : float prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : bucket_options__explicit_buckets) -> ()

let yojson_of_bucket_options__explicit_buckets =
  (function
   | { bounds = v_bounds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_float) v_bounds
         in
         ("bounds", arg) :: bnds
       in
       `Assoc bnds
    : bucket_options__explicit_buckets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bucket_options__explicit_buckets

[@@@deriving.end]

type bucket_options__exponential_buckets = {
  growth_factor : float prop;
  num_finite_buckets : float prop;
  scale : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bucket_options__exponential_buckets) -> ()

let yojson_of_bucket_options__exponential_buckets =
  (function
   | {
       growth_factor = v_growth_factor;
       num_finite_buckets = v_num_finite_buckets;
       scale = v_scale;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_scale in
         ("scale", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_num_finite_buckets
         in
         ("num_finite_buckets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_growth_factor in
         ("growth_factor", arg) :: bnds
       in
       `Assoc bnds
    : bucket_options__exponential_buckets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bucket_options__exponential_buckets

[@@@deriving.end]

type bucket_options__linear_buckets = {
  num_finite_buckets : float prop;
  offset : float prop;
  width : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bucket_options__linear_buckets) -> ()

let yojson_of_bucket_options__linear_buckets =
  (function
   | {
       num_finite_buckets = v_num_finite_buckets;
       offset = v_offset;
       width = v_width;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_width in
         ("width", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_offset in
         ("offset", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_num_finite_buckets
         in
         ("num_finite_buckets", arg) :: bnds
       in
       `Assoc bnds
    : bucket_options__linear_buckets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bucket_options__linear_buckets

[@@@deriving.end]

type bucket_options = {
  explicit_buckets : bucket_options__explicit_buckets list;
  exponential_buckets : bucket_options__exponential_buckets list;
  linear_buckets : bucket_options__linear_buckets list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bucket_options) -> ()

let yojson_of_bucket_options =
  (function
   | {
       explicit_buckets = v_explicit_buckets;
       exponential_buckets = v_exponential_buckets;
       linear_buckets = v_linear_buckets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_bucket_options__linear_buckets
             v_linear_buckets
         in
         ("linear_buckets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_bucket_options__exponential_buckets
             v_exponential_buckets
         in
         ("exponential_buckets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_bucket_options__explicit_buckets
             v_explicit_buckets
         in
         ("explicit_buckets", arg) :: bnds
       in
       `Assoc bnds
    : bucket_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bucket_options

[@@@deriving.end]

type metric_descriptor__labels = {
  description : string prop option; [@option]
  key : string prop;
  value_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric_descriptor__labels) -> ()

let yojson_of_metric_descriptor__labels =
  (function
   | {
       description = v_description;
       key = v_key;
       value_type = v_value_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metric_descriptor__labels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric_descriptor__labels

[@@@deriving.end]

type metric_descriptor = {
  display_name : string prop option; [@option]
  metric_kind : string prop;
  unit : string prop option; [@option]
  value_type : string prop;
  labels : metric_descriptor__labels list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric_descriptor) -> ()

let yojson_of_metric_descriptor =
  (function
   | {
       display_name = v_display_name;
       metric_kind = v_metric_kind;
       unit = v_unit;
       value_type = v_value_type;
       labels = v_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_metric_descriptor__labels
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_type in
         ("value_type", arg) :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_kind in
         ("metric_kind", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metric_descriptor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric_descriptor

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

type google_logging_metric = {
  bucket_name : string prop option; [@option]
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  filter : string prop;
  id : string prop option; [@option]
  label_extractors : (string * string prop) list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  value_extractor : string prop option; [@option]
  bucket_options : bucket_options list;
  metric_descriptor : metric_descriptor list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_metric) -> ()

let yojson_of_google_logging_metric =
  (function
   | {
       bucket_name = v_bucket_name;
       description = v_description;
       disabled = v_disabled;
       filter = v_filter;
       id = v_id;
       label_extractors = v_label_extractors;
       name = v_name;
       project = v_project;
       value_extractor = v_value_extractor;
       bucket_options = v_bucket_options;
       metric_descriptor = v_metric_descriptor;
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
         let arg =
           yojson_of_list yojson_of_metric_descriptor
             v_metric_descriptor
         in
         ("metric_descriptor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_bucket_options v_bucket_options
         in
         ("bucket_options", arg) :: bnds
       in
       let bnds =
         match v_value_extractor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value_extractor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_label_extractors with
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
             let bnd = "label_extractors", arg in
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
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
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
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_logging_metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_metric

[@@@deriving.end]

let bucket_options__explicit_buckets ~bounds () :
    bucket_options__explicit_buckets =
  { bounds }

let bucket_options__exponential_buckets ~growth_factor
    ~num_finite_buckets ~scale () :
    bucket_options__exponential_buckets =
  { growth_factor; num_finite_buckets; scale }

let bucket_options__linear_buckets ~num_finite_buckets ~offset ~width
    () : bucket_options__linear_buckets =
  { num_finite_buckets; offset; width }

let bucket_options ?(explicit_buckets = [])
    ?(exponential_buckets = []) ?(linear_buckets = []) () :
    bucket_options =
  { explicit_buckets; exponential_buckets; linear_buckets }

let metric_descriptor__labels ?description ?value_type ~key () :
    metric_descriptor__labels =
  { description; key; value_type }

let metric_descriptor ?display_name ?unit ~metric_kind ~value_type
    ~labels () : metric_descriptor =
  { display_name; metric_kind; unit; value_type; labels }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_logging_metric ?bucket_name ?description ?disabled ?id
    ?label_extractors ?project ?value_extractor
    ?(bucket_options = []) ?(metric_descriptor = []) ?timeouts
    ~filter ~name () : google_logging_metric =
  {
    bucket_name;
    description;
    disabled;
    filter;
    id;
    label_extractors;
    name;
    project;
    value_extractor;
    bucket_options;
    metric_descriptor;
    timeouts;
  }

type t = {
  bucket_name : string prop;
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  label_extractors : (string * string) list prop;
  name : string prop;
  project : string prop;
  value_extractor : string prop;
}

let make ?bucket_name ?description ?disabled ?id ?label_extractors
    ?project ?value_extractor ?(bucket_options = [])
    ?(metric_descriptor = []) ?timeouts ~filter ~name __id =
  let __type = "google_logging_metric" in
  let __attrs =
    ({
       bucket_name = Prop.computed __type __id "bucket_name";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       label_extractors =
         Prop.computed __type __id "label_extractors";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       value_extractor = Prop.computed __type __id "value_extractor";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_metric
        (google_logging_metric ?bucket_name ?description ?disabled
           ?id ?label_extractors ?project ?value_extractor
           ~bucket_options ~metric_descriptor ?timeouts ~filter ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?bucket_name ?description ?disabled ?id
    ?label_extractors ?project ?value_extractor
    ?(bucket_options = []) ?(metric_descriptor = []) ?timeouts
    ~filter ~name __id =
  let (r : _ Tf_core.resource) =
    make ?bucket_name ?description ?disabled ?id ?label_extractors
      ?project ?value_extractor ~bucket_options ~metric_descriptor
      ?timeouts ~filter ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
