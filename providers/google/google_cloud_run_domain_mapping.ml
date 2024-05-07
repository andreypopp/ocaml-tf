(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  labels : (string * string prop) list option; [@option]
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       labels = v_labels;
       namespace = v_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type spec = {
  certificate_mode : string prop option; [@option]
  force_override : bool prop option; [@option]
  route_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       certificate_mode = v_certificate_mode;
       force_override = v_force_override;
       route_name = v_route_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_route_name in
         ("route_name", arg) :: bnds
       in
       let bnds =
         match v_force_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_override", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type status__resource_records = {
  name : string prop;
  rrdata : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__resource_records) -> ()

let yojson_of_status__resource_records =
  (function
   | { name = v_name; rrdata = v_rrdata; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rrdata in
         ("rrdata", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : status__resource_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__resource_records

[@@@deriving.end]

type status__conditions = {
  message : string prop;
  reason : string prop;
  status : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__conditions) -> ()

let yojson_of_status__conditions =
  (function
   | {
       message = v_message;
       reason = v_reason;
       status = v_status;
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
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : status__conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__conditions

[@@@deriving.end]

type status = {
  conditions : status__conditions list;
  mapped_route_name : string prop;
  observed_generation : float prop;
  resource_records : status__resource_records list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       conditions = v_conditions;
       mapped_route_name = v_mapped_route_name;
       observed_generation = v_observed_generation;
       resource_records = v_resource_records;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__resource_records
             v_resource_records
         in
         ("resource_records", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_observed_generation
         in
         ("observed_generation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mapped_route_name
         in
         ("mapped_route_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__conditions v_conditions
         in
         ("conditions", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type google_cloud_run_domain_mapping = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  metadata : metadata list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_run_domain_mapping) -> ()

let yojson_of_google_cloud_run_domain_mapping =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       metadata = v_metadata;
       spec = v_spec;
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
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : google_cloud_run_domain_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_run_domain_mapping

[@@@deriving.end]

let metadata ?annotations ?labels ~namespace () : metadata =
  { annotations; labels; namespace }

let spec ?certificate_mode ?force_override ~route_name () : spec =
  { certificate_mode; force_override; route_name }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_cloud_run_domain_mapping ?id ?project ?(metadata = [])
    ?timeouts ~location ~name ~spec () :
    google_cloud_run_domain_mapping =
  { id; location; name; project; metadata; spec; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  status : status list prop;
}

let make ?id ?project ?(metadata = []) ?timeouts ~location ~name
    ~spec __id =
  let __type = "google_cloud_run_domain_mapping" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_run_domain_mapping
        (google_cloud_run_domain_mapping ?id ?project ~metadata
           ?timeouts ~location ~name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?(metadata = []) ?timeouts
    ~location ~name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~metadata ?timeouts ~location ~name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
