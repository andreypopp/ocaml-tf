(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { update : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { update = v_update } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_dataflow_job = {
  additional_experiments : string prop list option; [@option]
  enable_streaming_engine : bool prop option; [@option]
  id : string prop option; [@option]
  ip_configuration : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  machine_type : string prop option; [@option]
  max_workers : float prop option; [@option]
  name : string prop;
  network : string prop option; [@option]
  on_delete : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  service_account_email : string prop option; [@option]
  skip_wait_on_job_termination : bool prop option; [@option]
  subnetwork : string prop option; [@option]
  temp_gcs_location : string prop;
  template_gcs_path : string prop;
  transform_name_mapping : (string * string prop) list option;
      [@option]
  zone : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataflow_job) -> ()

let yojson_of_google_dataflow_job =
  (function
   | {
       additional_experiments = v_additional_experiments;
       enable_streaming_engine = v_enable_streaming_engine;
       id = v_id;
       ip_configuration = v_ip_configuration;
       kms_key_name = v_kms_key_name;
       labels = v_labels;
       machine_type = v_machine_type;
       max_workers = v_max_workers;
       name = v_name;
       network = v_network;
       on_delete = v_on_delete;
       parameters = v_parameters;
       project = v_project;
       region = v_region;
       service_account_email = v_service_account_email;
       skip_wait_on_job_termination = v_skip_wait_on_job_termination;
       subnetwork = v_subnetwork;
       temp_gcs_location = v_temp_gcs_location;
       template_gcs_path = v_template_gcs_path;
       transform_name_mapping = v_transform_name_mapping;
       zone = v_zone;
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
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transform_name_mapping with
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
             let bnd = "transform_name_mapping", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_template_gcs_path
         in
         ("template_gcs_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_temp_gcs_location
         in
         ("temp_gcs_location", arg) :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_wait_on_job_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_wait_on_job_termination", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
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
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_configuration", arg in
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
         match v_enable_streaming_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_streaming_engine", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_experiments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_experiments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dataflow_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataflow_job

[@@@deriving.end]

let timeouts ?update () : timeouts = { update }

let google_dataflow_job ?additional_experiments
    ?enable_streaming_engine ?id ?ip_configuration ?kms_key_name
    ?labels ?machine_type ?max_workers ?network ?on_delete
    ?parameters ?project ?region ?service_account_email
    ?skip_wait_on_job_termination ?subnetwork ?transform_name_mapping
    ?zone ?timeouts ~name ~temp_gcs_location ~template_gcs_path () :
    google_dataflow_job =
  {
    additional_experiments;
    enable_streaming_engine;
    id;
    ip_configuration;
    kms_key_name;
    labels;
    machine_type;
    max_workers;
    name;
    network;
    on_delete;
    parameters;
    project;
    region;
    service_account_email;
    skip_wait_on_job_termination;
    subnetwork;
    temp_gcs_location;
    template_gcs_path;
    transform_name_mapping;
    zone;
    timeouts;
  }

type t = {
  additional_experiments : string list prop;
  effective_labels : (string * string) list prop;
  enable_streaming_engine : bool prop;
  id : string prop;
  ip_configuration : string prop;
  job_id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  machine_type : string prop;
  max_workers : float prop;
  name : string prop;
  network : string prop;
  on_delete : string prop;
  parameters : (string * string) list prop;
  project : string prop;
  region : string prop;
  service_account_email : string prop;
  skip_wait_on_job_termination : bool prop;
  state : string prop;
  subnetwork : string prop;
  temp_gcs_location : string prop;
  template_gcs_path : string prop;
  terraform_labels : (string * string) list prop;
  transform_name_mapping : (string * string) list prop;
  type_ : string prop;
  zone : string prop;
}

let make ?additional_experiments ?enable_streaming_engine ?id
    ?ip_configuration ?kms_key_name ?labels ?machine_type
    ?max_workers ?network ?on_delete ?parameters ?project ?region
    ?service_account_email ?skip_wait_on_job_termination ?subnetwork
    ?transform_name_mapping ?zone ?timeouts ~name ~temp_gcs_location
    ~template_gcs_path __id =
  let __type = "google_dataflow_job" in
  let __attrs =
    ({
       additional_experiments =
         Prop.computed __type __id "additional_experiments";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_streaming_engine =
         Prop.computed __type __id "enable_streaming_engine";
       id = Prop.computed __type __id "id";
       ip_configuration =
         Prop.computed __type __id "ip_configuration";
       job_id = Prop.computed __type __id "job_id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       machine_type = Prop.computed __type __id "machine_type";
       max_workers = Prop.computed __type __id "max_workers";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       on_delete = Prop.computed __type __id "on_delete";
       parameters = Prop.computed __type __id "parameters";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       service_account_email =
         Prop.computed __type __id "service_account_email";
       skip_wait_on_job_termination =
         Prop.computed __type __id "skip_wait_on_job_termination";
       state = Prop.computed __type __id "state";
       subnetwork = Prop.computed __type __id "subnetwork";
       temp_gcs_location =
         Prop.computed __type __id "temp_gcs_location";
       template_gcs_path =
         Prop.computed __type __id "template_gcs_path";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       transform_name_mapping =
         Prop.computed __type __id "transform_name_mapping";
       type_ = Prop.computed __type __id "type";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataflow_job
        (google_dataflow_job ?additional_experiments
           ?enable_streaming_engine ?id ?ip_configuration
           ?kms_key_name ?labels ?machine_type ?max_workers ?network
           ?on_delete ?parameters ?project ?region
           ?service_account_email ?skip_wait_on_job_termination
           ?subnetwork ?transform_name_mapping ?zone ?timeouts ~name
           ~temp_gcs_location ~template_gcs_path ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_experiments
    ?enable_streaming_engine ?id ?ip_configuration ?kms_key_name
    ?labels ?machine_type ?max_workers ?network ?on_delete
    ?parameters ?project ?region ?service_account_email
    ?skip_wait_on_job_termination ?subnetwork ?transform_name_mapping
    ?zone ?timeouts ~name ~temp_gcs_location ~template_gcs_path __id
    =
  let (r : _ Tf_core.resource) =
    make ?additional_experiments ?enable_streaming_engine ?id
      ?ip_configuration ?kms_key_name ?labels ?machine_type
      ?max_workers ?network ?on_delete ?parameters ?project ?region
      ?service_account_email ?skip_wait_on_job_termination
      ?subnetwork ?transform_name_mapping ?zone ?timeouts ~name
      ~temp_gcs_location ~template_gcs_path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
