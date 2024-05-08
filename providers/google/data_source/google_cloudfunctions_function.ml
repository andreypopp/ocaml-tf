(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_trigger__failure_policy = { retry : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger__failure_policy) -> ()

let yojson_of_event_trigger__failure_policy =
  (function
   | { retry = v_retry } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_retry in
         ("retry", arg) :: bnds
       in
       `Assoc bnds
    : event_trigger__failure_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger__failure_policy

[@@@deriving.end]

type event_trigger = {
  event_type : string prop;
  failure_policy : event_trigger__failure_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_trigger) -> ()

let yojson_of_event_trigger =
  (function
   | {
       event_type = v_event_type;
       failure_policy = v_failure_policy;
       resource = v_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_failure_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_trigger__failure_policy)
               v_failure_policy
           in
           let bnd = "failure_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       `Assoc bnds
    : event_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_trigger

[@@@deriving.end]

type secret_environment_variables = {
  key : string prop;
  project_id : string prop;
  secret : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret_environment_variables) -> ()

let yojson_of_secret_environment_variables =
  (function
   | {
       key = v_key;
       project_id = v_project_id;
       secret = v_secret;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : secret_environment_variables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret_environment_variables

[@@@deriving.end]

type secret_volumes__versions = {
  path : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret_volumes__versions) -> ()

let yojson_of_secret_volumes__versions =
  (function
   | { path = v_path; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : secret_volumes__versions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret_volumes__versions

[@@@deriving.end]

type secret_volumes = {
  mount_path : string prop;
  project_id : string prop;
  secret : string prop;
  versions : secret_volumes__versions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret_volumes) -> ()

let yojson_of_secret_volumes =
  (function
   | {
       mount_path = v_mount_path;
       project_id = v_project_id;
       secret = v_secret;
       versions = v_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_versions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secret_volumes__versions)
               v_versions
           in
           let bnd = "versions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : secret_volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret_volumes

[@@@deriving.end]

type source_repository = {
  deployed_url : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_repository) -> ()

let yojson_of_source_repository =
  (function
   | { deployed_url = v_deployed_url; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_deployed_url in
         ("deployed_url", arg) :: bnds
       in
       `Assoc bnds
    : source_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_repository

[@@@deriving.end]

type google_cloudfunctions_function = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudfunctions_function) -> ()

let yojson_of_google_cloudfunctions_function =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : google_cloudfunctions_function ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudfunctions_function

[@@@deriving.end]

let google_cloudfunctions_function ?id ?project ?region ~name () :
    google_cloudfunctions_function =
  { id; name; project; region }

type t = {
  tf_name : string;
  available_memory_mb : float prop;
  build_environment_variables : (string * string) list prop;
  build_worker_pool : string prop;
  description : string prop;
  docker_registry : string prop;
  docker_repository : string prop;
  effective_labels : (string * string) list prop;
  entry_point : string prop;
  environment_variables : (string * string) list prop;
  event_trigger : event_trigger list prop;
  https_trigger_security_level : string prop;
  https_trigger_url : string prop;
  id : string prop;
  ingress_settings : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  max_instances : float prop;
  min_instances : float prop;
  name : string prop;
  project : string prop;
  region : string prop;
  runtime : string prop;
  secret_environment_variables :
    secret_environment_variables list prop;
  secret_volumes : secret_volumes list prop;
  service_account_email : string prop;
  source_archive_bucket : string prop;
  source_archive_object : string prop;
  source_repository : source_repository list prop;
  status : string prop;
  terraform_labels : (string * string) list prop;
  timeout : float prop;
  trigger_http : bool prop;
  version_id : string prop;
  vpc_connector : string prop;
  vpc_connector_egress_settings : string prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_cloudfunctions_function" in
  let __attrs =
    ({
       tf_name = __id;
       available_memory_mb =
         Prop.computed __type __id "available_memory_mb";
       build_environment_variables =
         Prop.computed __type __id "build_environment_variables";
       build_worker_pool =
         Prop.computed __type __id "build_worker_pool";
       description = Prop.computed __type __id "description";
       docker_registry = Prop.computed __type __id "docker_registry";
       docker_repository =
         Prop.computed __type __id "docker_repository";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       entry_point = Prop.computed __type __id "entry_point";
       environment_variables =
         Prop.computed __type __id "environment_variables";
       event_trigger = Prop.computed __type __id "event_trigger";
       https_trigger_security_level =
         Prop.computed __type __id "https_trigger_security_level";
       https_trigger_url =
         Prop.computed __type __id "https_trigger_url";
       id = Prop.computed __type __id "id";
       ingress_settings =
         Prop.computed __type __id "ingress_settings";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       max_instances = Prop.computed __type __id "max_instances";
       min_instances = Prop.computed __type __id "min_instances";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       runtime = Prop.computed __type __id "runtime";
       secret_environment_variables =
         Prop.computed __type __id "secret_environment_variables";
       secret_volumes = Prop.computed __type __id "secret_volumes";
       service_account_email =
         Prop.computed __type __id "service_account_email";
       source_archive_bucket =
         Prop.computed __type __id "source_archive_bucket";
       source_archive_object =
         Prop.computed __type __id "source_archive_object";
       source_repository =
         Prop.computed __type __id "source_repository";
       status = Prop.computed __type __id "status";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       timeout = Prop.computed __type __id "timeout";
       trigger_http = Prop.computed __type __id "trigger_http";
       version_id = Prop.computed __type __id "version_id";
       vpc_connector = Prop.computed __type __id "vpc_connector";
       vpc_connector_egress_settings =
         Prop.computed __type __id "vpc_connector_egress_settings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudfunctions_function
        (google_cloudfunctions_function ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
