(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_config = { kms_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_config) -> ()

let yojson_of_encryption_config =
  (function
   | { kms_key = v_kms_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key in
         ("kms_key", arg) :: bnds
       in
       `Assoc bnds
    : encryption_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_config

[@@@deriving.end]

type hive_metastore_config__kerberos_config__keytab = {
  cloud_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : hive_metastore_config__kerberos_config__keytab) -> ()

let yojson_of_hive_metastore_config__kerberos_config__keytab =
  (function
   | { cloud_secret = v_cloud_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cloud_secret in
         ("cloud_secret", arg) :: bnds
       in
       `Assoc bnds
    : hive_metastore_config__kerberos_config__keytab ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hive_metastore_config__kerberos_config__keytab

[@@@deriving.end]

type hive_metastore_config__kerberos_config = {
  keytab : hive_metastore_config__kerberos_config__keytab list;
      [@default []] [@yojson_drop_default ( = )]
  krb5_config_gcs_uri : string prop;
  principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hive_metastore_config__kerberos_config) -> ()

let yojson_of_hive_metastore_config__kerberos_config =
  (function
   | {
       keytab = v_keytab;
       krb5_config_gcs_uri = v_krb5_config_gcs_uri;
       principal = v_principal;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_krb5_config_gcs_uri
         in
         ("krb5_config_gcs_uri", arg) :: bnds
       in
       let bnds =
         if [] = v_keytab then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hive_metastore_config__kerberos_config__keytab)
               v_keytab
           in
           let bnd = "keytab", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : hive_metastore_config__kerberos_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hive_metastore_config__kerberos_config

[@@@deriving.end]

type hive_metastore_config__auxiliary_versions = {
  config_overrides : (string * string prop) list;
  key : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hive_metastore_config__auxiliary_versions) -> ()

let yojson_of_hive_metastore_config__auxiliary_versions =
  (function
   | {
       config_overrides = v_config_overrides;
       key = v_key;
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
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_config_overrides
         in
         ("config_overrides", arg) :: bnds
       in
       `Assoc bnds
    : hive_metastore_config__auxiliary_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hive_metastore_config__auxiliary_versions

[@@@deriving.end]

type hive_metastore_config = {
  auxiliary_versions :
    hive_metastore_config__auxiliary_versions list;
      [@default []] [@yojson_drop_default ( = )]
  config_overrides : (string * string prop) list;
  endpoint_protocol : string prop;
  kerberos_config : hive_metastore_config__kerberos_config list;
      [@default []] [@yojson_drop_default ( = )]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hive_metastore_config) -> ()

let yojson_of_hive_metastore_config =
  (function
   | {
       auxiliary_versions = v_auxiliary_versions;
       config_overrides = v_config_overrides;
       endpoint_protocol = v_endpoint_protocol;
       kerberos_config = v_kerberos_config;
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
         if [] = v_kerberos_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hive_metastore_config__kerberos_config)
               v_kerberos_config
           in
           let bnd = "kerberos_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_endpoint_protocol
         in
         ("endpoint_protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_config_overrides
         in
         ("config_overrides", arg) :: bnds
       in
       let bnds =
         if [] = v_auxiliary_versions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hive_metastore_config__auxiliary_versions)
               v_auxiliary_versions
           in
           let bnd = "auxiliary_versions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : hive_metastore_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hive_metastore_config

[@@@deriving.end]

type maintenance_window = {
  day_of_week : string prop;
  hour_of_day : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | { day_of_week = v_day_of_week; hour_of_day = v_hour_of_day } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour_of_day in
         ("hour_of_day", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

[@@@deriving.end]

type metadata_integration__data_catalog_config = {
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata_integration__data_catalog_config) -> ()

let yojson_of_metadata_integration__data_catalog_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : metadata_integration__data_catalog_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_integration__data_catalog_config

[@@@deriving.end]

type metadata_integration = {
  data_catalog_config :
    metadata_integration__data_catalog_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata_integration) -> ()

let yojson_of_metadata_integration =
  (function
   | { data_catalog_config = v_data_catalog_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_data_catalog_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_metadata_integration__data_catalog_config)
               v_data_catalog_config
           in
           let bnd = "data_catalog_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : metadata_integration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_integration

[@@@deriving.end]

type network_config__consumers = {
  endpoint_uri : string prop;
  subnetwork : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__consumers) -> ()

let yojson_of_network_config__consumers =
  (function
   | { endpoint_uri = v_endpoint_uri; subnetwork = v_subnetwork } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnetwork in
         ("subnetwork", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_uri in
         ("endpoint_uri", arg) :: bnds
       in
       `Assoc bnds
    : network_config__consumers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__consumers

[@@@deriving.end]

type network_config = {
  consumers : network_config__consumers list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | { consumers = v_consumers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_consumers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config__consumers)
               v_consumers
           in
           let bnd = "consumers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config

[@@@deriving.end]

type scaling_config = {
  instance_size : string prop;
  scaling_factor : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scaling_config) -> ()

let yojson_of_scaling_config =
  (function
   | {
       instance_size = v_instance_size;
       scaling_factor = v_scaling_factor;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_scaling_factor in
         ("scaling_factor", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_size in
         ("instance_size", arg) :: bnds
       in
       `Assoc bnds
    : scaling_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scaling_config

[@@@deriving.end]

type telemetry_config = { log_format : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : telemetry_config) -> ()

let yojson_of_telemetry_config =
  (function
   | { log_format = v_log_format } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_format in
         ("log_format", arg) :: bnds
       in
       `Assoc bnds
    : telemetry_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_telemetry_config

[@@@deriving.end]

type google_dataproc_metastore_service = {
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  service_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataproc_metastore_service) -> ()

let yojson_of_google_dataproc_metastore_service =
  (function
   | {
       id = v_id;
       location = v_location;
       project = v_project;
       service_id = v_service_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_id in
         ("service_id", arg) :: bnds
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
    : google_dataproc_metastore_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataproc_metastore_service

[@@@deriving.end]

let google_dataproc_metastore_service ?id ?project ~location
    ~service_id () : google_dataproc_metastore_service =
  { id; location; project; service_id }

type t = {
  tf_name : string;
  artifact_gcs_uri : string prop;
  database_type : string prop;
  effective_labels : (string * string) list prop;
  encryption_config : encryption_config list prop;
  endpoint_uri : string prop;
  hive_metastore_config : hive_metastore_config list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  maintenance_window : maintenance_window list prop;
  metadata_integration : metadata_integration list prop;
  name : string prop;
  network : string prop;
  network_config : network_config list prop;
  port : float prop;
  project : string prop;
  release_channel : string prop;
  scaling_config : scaling_config list prop;
  service_id : string prop;
  state : string prop;
  state_message : string prop;
  telemetry_config : telemetry_config list prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  uid : string prop;
}

let make ?id ?project ~location ~service_id __id =
  let __type = "google_dataproc_metastore_service" in
  let __attrs =
    ({
       tf_name = __id;
       artifact_gcs_uri =
         Prop.computed __type __id "artifact_gcs_uri";
       database_type = Prop.computed __type __id "database_type";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       encryption_config =
         Prop.computed __type __id "encryption_config";
       endpoint_uri = Prop.computed __type __id "endpoint_uri";
       hive_metastore_config =
         Prop.computed __type __id "hive_metastore_config";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       metadata_integration =
         Prop.computed __type __id "metadata_integration";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       network_config = Prop.computed __type __id "network_config";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       release_channel = Prop.computed __type __id "release_channel";
       scaling_config = Prop.computed __type __id "scaling_config";
       service_id = Prop.computed __type __id "service_id";
       state = Prop.computed __type __id "state";
       state_message = Prop.computed __type __id "state_message";
       telemetry_config =
         Prop.computed __type __id "telemetry_config";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       tier = Prop.computed __type __id "tier";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataproc_metastore_service
        (google_dataproc_metastore_service ?id ?project ~location
           ~service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~service_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~service_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
