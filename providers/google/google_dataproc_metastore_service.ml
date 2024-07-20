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

type hive_metastore_config__auxiliary_versions = {
  config_overrides : (string * string prop) list option; [@option]
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
         match v_config_overrides with
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
             let bnd = "config_overrides", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hive_metastore_config__auxiliary_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hive_metastore_config__auxiliary_versions

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
  krb5_config_gcs_uri : string prop;
  principal : string prop;
  keytab : hive_metastore_config__kerberos_config__keytab list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hive_metastore_config__kerberos_config) -> ()

let yojson_of_hive_metastore_config__kerberos_config =
  (function
   | {
       krb5_config_gcs_uri = v_krb5_config_gcs_uri;
       principal = v_principal;
       keytab = v_keytab;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_keytab then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hive_metastore_config__kerberos_config__keytab)
               v_keytab
           in
           let bnd = "keytab", arg in
           bnd :: bnds
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
       `Assoc bnds
    : hive_metastore_config__kerberos_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hive_metastore_config__kerberos_config

[@@@deriving.end]

type hive_metastore_config = {
  config_overrides : (string * string prop) list option; [@option]
  endpoint_protocol : string prop option; [@option]
  version : string prop;
  auxiliary_versions :
    hive_metastore_config__auxiliary_versions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kerberos_config : hive_metastore_config__kerberos_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hive_metastore_config) -> ()

let yojson_of_hive_metastore_config =
  (function
   | {
       config_overrides = v_config_overrides;
       endpoint_protocol = v_endpoint_protocol;
       version = v_version;
       auxiliary_versions = v_auxiliary_versions;
       kerberos_config = v_kerberos_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_kerberos_config then bnds
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
         if Stdlib.( = ) [] v_auxiliary_versions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hive_metastore_config__auxiliary_versions)
               v_auxiliary_versions
           in
           let bnd = "auxiliary_versions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_endpoint_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config_overrides with
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
             let bnd = "config_overrides", arg in
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_data_catalog_config then bnds
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

type network_config__consumers = { subnetwork : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config__consumers) -> ()

let yojson_of_network_config__consumers =
  (function
   | { subnetwork = v_subnetwork } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnetwork in
         ("subnetwork", arg) :: bnds
       in
       `Assoc bnds
    : network_config__consumers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__consumers

[@@@deriving.end]

type network_config = {
  consumers : network_config__consumers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_consumers then bnds
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
  instance_size : string prop option; [@option]
  scaling_factor : float prop option; [@option]
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
         match v_scaling_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scaling_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scaling_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scaling_config

[@@@deriving.end]

type scheduled_backup = {
  backup_location : string prop;
  cron_schedule : string prop option; [@option]
  enabled : bool prop option; [@option]
  time_zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduled_backup) -> ()

let yojson_of_scheduled_backup =
  (function
   | {
       backup_location = v_backup_location;
       cron_schedule = v_cron_schedule;
       enabled = v_enabled;
       time_zone = v_time_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cron_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cron_schedule", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backup_location
         in
         ("backup_location", arg) :: bnds
       in
       `Assoc bnds
    : scheduled_backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduled_backup

[@@@deriving.end]

type telemetry_config = { log_format : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : telemetry_config) -> ()

let yojson_of_telemetry_config =
  (function
   | { log_format = v_log_format } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : telemetry_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_telemetry_config

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

type google_dataproc_metastore_service = {
  database_type : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop option; [@option]
  network : string prop option; [@option]
  port : float prop option; [@option]
  project : string prop option; [@option]
  release_channel : string prop option; [@option]
  service_id : string prop;
  tier : string prop option; [@option]
  encryption_config : encryption_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hive_metastore_config : hive_metastore_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance_window : maintenance_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metadata_integration : metadata_integration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_config : network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scaling_config : scaling_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scheduled_backup : scheduled_backup list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  telemetry_config : telemetry_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataproc_metastore_service) -> ()

let yojson_of_google_dataproc_metastore_service =
  (function
   | {
       database_type = v_database_type;
       id = v_id;
       labels = v_labels;
       location = v_location;
       network = v_network;
       port = v_port;
       project = v_project;
       release_channel = v_release_channel;
       service_id = v_service_id;
       tier = v_tier;
       encryption_config = v_encryption_config;
       hive_metastore_config = v_hive_metastore_config;
       maintenance_window = v_maintenance_window;
       metadata_integration = v_metadata_integration;
       network_config = v_network_config;
       scaling_config = v_scaling_config;
       scheduled_backup = v_scheduled_backup;
       telemetry_config = v_telemetry_config;
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
         if Stdlib.( = ) [] v_telemetry_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_telemetry_config)
               v_telemetry_config
           in
           let bnd = "telemetry_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scheduled_backup then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scheduled_backup)
               v_scheduled_backup
           in
           let bnd = "scheduled_backup", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scaling_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scaling_config)
               v_scaling_config
           in
           let bnd = "scaling_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config)
               v_network_config
           in
           let bnd = "network_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata_integration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata_integration)
               v_metadata_integration
           in
           let bnd = "metadata_integration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_window then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_window)
               v_maintenance_window
           in
           let bnd = "maintenance_window", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hive_metastore_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hive_metastore_config)
               v_hive_metastore_config
           in
           let bnd = "hive_metastore_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_id in
         ("service_id", arg) :: bnds
       in
       let bnds =
         match v_release_channel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "release_channel", arg in
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dataproc_metastore_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataproc_metastore_service

[@@@deriving.end]

let encryption_config ~kms_key () : encryption_config = { kms_key }

let hive_metastore_config__auxiliary_versions ?config_overrides ~key
    ~version () : hive_metastore_config__auxiliary_versions =
  { config_overrides; key; version }

let hive_metastore_config__kerberos_config__keytab ~cloud_secret () :
    hive_metastore_config__kerberos_config__keytab =
  { cloud_secret }

let hive_metastore_config__kerberos_config ~krb5_config_gcs_uri
    ~principal ~keytab () : hive_metastore_config__kerberos_config =
  { krb5_config_gcs_uri; principal; keytab }

let hive_metastore_config ?config_overrides ?endpoint_protocol
    ?(kerberos_config = []) ~version ~auxiliary_versions () :
    hive_metastore_config =
  {
    config_overrides;
    endpoint_protocol;
    version;
    auxiliary_versions;
    kerberos_config;
  }

let maintenance_window ~day_of_week ~hour_of_day () :
    maintenance_window =
  { day_of_week; hour_of_day }

let metadata_integration__data_catalog_config ~enabled () :
    metadata_integration__data_catalog_config =
  { enabled }

let metadata_integration ~data_catalog_config () :
    metadata_integration =
  { data_catalog_config }

let network_config__consumers ~subnetwork () :
    network_config__consumers =
  { subnetwork }

let network_config ~consumers () : network_config = { consumers }

let scaling_config ?instance_size ?scaling_factor () : scaling_config
    =
  { instance_size; scaling_factor }

let scheduled_backup ?cron_schedule ?enabled ?time_zone
    ~backup_location () : scheduled_backup =
  { backup_location; cron_schedule; enabled; time_zone }

let telemetry_config ?log_format () : telemetry_config =
  { log_format }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataproc_metastore_service ?database_type ?id ?labels
    ?location ?network ?port ?project ?release_channel ?tier
    ?(encryption_config = []) ?(hive_metastore_config = [])
    ?(maintenance_window = []) ?(metadata_integration = [])
    ?(network_config = []) ?(scaling_config = [])
    ?(scheduled_backup = []) ?(telemetry_config = []) ?timeouts
    ~service_id () : google_dataproc_metastore_service =
  {
    database_type;
    id;
    labels;
    location;
    network;
    port;
    project;
    release_channel;
    service_id;
    tier;
    encryption_config;
    hive_metastore_config;
    maintenance_window;
    metadata_integration;
    network_config;
    scaling_config;
    scheduled_backup;
    telemetry_config;
    timeouts;
  }

type t = {
  tf_name : string;
  artifact_gcs_uri : string prop;
  database_type : string prop;
  effective_labels : (string * string) list prop;
  endpoint_uri : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  port : float prop;
  project : string prop;
  release_channel : string prop;
  service_id : string prop;
  state : string prop;
  state_message : string prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  uid : string prop;
}

let make ?database_type ?id ?labels ?location ?network ?port ?project
    ?release_channel ?tier ?(encryption_config = [])
    ?(hive_metastore_config = []) ?(maintenance_window = [])
    ?(metadata_integration = []) ?(network_config = [])
    ?(scaling_config = []) ?(scheduled_backup = [])
    ?(telemetry_config = []) ?timeouts ~service_id __id =
  let __type = "google_dataproc_metastore_service" in
  let __attrs =
    ({
       tf_name = __id;
       artifact_gcs_uri =
         Prop.computed __type __id "artifact_gcs_uri";
       database_type = Prop.computed __type __id "database_type";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       endpoint_uri = Prop.computed __type __id "endpoint_uri";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       release_channel = Prop.computed __type __id "release_channel";
       service_id = Prop.computed __type __id "service_id";
       state = Prop.computed __type __id "state";
       state_message = Prop.computed __type __id "state_message";
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
        (google_dataproc_metastore_service ?database_type ?id ?labels
           ?location ?network ?port ?project ?release_channel ?tier
           ~encryption_config ~hive_metastore_config
           ~maintenance_window ~metadata_integration ~network_config
           ~scaling_config ~scheduled_backup ~telemetry_config
           ?timeouts ~service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?database_type ?id ?labels ?location ?network
    ?port ?project ?release_channel ?tier ?(encryption_config = [])
    ?(hive_metastore_config = []) ?(maintenance_window = [])
    ?(metadata_integration = []) ?(network_config = [])
    ?(scaling_config = []) ?(scheduled_backup = [])
    ?(telemetry_config = []) ?timeouts ~service_id __id =
  let (r : _ Tf_core.resource) =
    make ?database_type ?id ?labels ?location ?network ?port ?project
      ?release_channel ?tier ~encryption_config
      ~hive_metastore_config ~maintenance_window
      ~metadata_integration ~network_config ~scaling_config
      ~scheduled_backup ~telemetry_config ?timeouts ~service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
