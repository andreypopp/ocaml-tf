(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_options = { use_partitioned_tables : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : bigquery_options) -> ()

let yojson_of_bigquery_options =
  (function
   | { use_partitioned_tables = v_use_partitioned_tables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_partitioned_tables
         in
         ("use_partitioned_tables", arg) :: bnds
       in
       `Assoc bnds
    : bigquery_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bigquery_options

[@@@deriving.end]

type exclusions = {
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  filter : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exclusions) -> ()

let yojson_of_exclusions =
  (function
   | {
       description = v_description;
       disabled = v_disabled;
       filter = v_filter;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       `Assoc bnds
    : exclusions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exclusions

[@@@deriving.end]

type google_logging_organization_sink = {
  description : string prop option; [@option]
  destination : string prop;
  disabled : bool prop option; [@option]
  filter : string prop option; [@option]
  id : string prop option; [@option]
  include_children : bool prop option; [@option]
  name : string prop;
  org_id : string prop;
  bigquery_options : bigquery_options list;
  exclusions : exclusions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_organization_sink) -> ()

let yojson_of_google_logging_organization_sink =
  (function
   | {
       description = v_description;
       destination = v_destination;
       disabled = v_disabled;
       filter = v_filter;
       id = v_id;
       include_children = v_include_children;
       name = v_name;
       org_id = v_org_id;
       bigquery_options = v_bigquery_options;
       exclusions = v_exclusions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_exclusions v_exclusions
         in
         ("exclusions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_bigquery_options
             v_bigquery_options
         in
         ("bigquery_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_org_id in
         ("org_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_include_children with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_children", arg in
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
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
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
    : google_logging_organization_sink ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_organization_sink

[@@@deriving.end]

let bigquery_options ~use_partitioned_tables () : bigquery_options =
  { use_partitioned_tables }

let exclusions ?description ?disabled ~filter ~name () : exclusions =
  { description; disabled; filter; name }

let google_logging_organization_sink ?description ?disabled ?filter
    ?id ?include_children ?(bigquery_options = []) ?(exclusions = [])
    ~destination ~name ~org_id () : google_logging_organization_sink
    =
  {
    description;
    destination;
    disabled;
    filter;
    id;
    include_children;
    name;
    org_id;
    bigquery_options;
    exclusions;
  }

type t = {
  tf_name : string;
  description : string prop;
  destination : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  include_children : bool prop;
  name : string prop;
  org_id : string prop;
  writer_identity : string prop;
}

let make ?description ?disabled ?filter ?id ?include_children
    ?(bigquery_options = []) ?(exclusions = []) ~destination ~name
    ~org_id __id =
  let __type = "google_logging_organization_sink" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       destination = Prop.computed __type __id "destination";
       disabled = Prop.computed __type __id "disabled";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       include_children =
         Prop.computed __type __id "include_children";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       writer_identity = Prop.computed __type __id "writer_identity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_organization_sink
        (google_logging_organization_sink ?description ?disabled
           ?filter ?id ?include_children ~bigquery_options
           ~exclusions ~destination ~name ~org_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?filter ?id
    ?include_children ?(bigquery_options = []) ?(exclusions = [])
    ~destination ~name ~org_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?filter ?id ?include_children
      ~bigquery_options ~exclusions ~destination ~name ~org_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
