(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification_config = { pubsub_topic : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_config) -> ()

let yojson_of_notification_config =
  (function
   | { pubsub_topic = v_pubsub_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pubsub_topic in
         ("pubsub_topic", arg) :: bnds
       in
       `Assoc bnds
    : notification_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_config

[@@@deriving.end]

type stream_configs__bigquery_destination__schema_config__last_updated_partition_config = {
  expiration_ms : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       stream_configs__bigquery_destination__schema_config__last_updated_partition_config) ->
  ()

let yojson_of_stream_configs__bigquery_destination__schema_config__last_updated_partition_config
    =
  (function
   | { expiration_ms = v_expiration_ms; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_expiration_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_ms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stream_configs__bigquery_destination__schema_config__last_updated_partition_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_stream_configs__bigquery_destination__schema_config__last_updated_partition_config

[@@@deriving.end]

type stream_configs__bigquery_destination__schema_config = {
  recursive_structure_depth : float prop;
  schema_type : string prop option; [@option]
  last_updated_partition_config :
    stream_configs__bigquery_destination__schema_config__last_updated_partition_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : stream_configs__bigquery_destination__schema_config) -> ()

let yojson_of_stream_configs__bigquery_destination__schema_config =
  (function
   | {
       recursive_structure_depth = v_recursive_structure_depth;
       schema_type = v_schema_type;
       last_updated_partition_config =
         v_last_updated_partition_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_last_updated_partition_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_stream_configs__bigquery_destination__schema_config__last_updated_partition_config)
               v_last_updated_partition_config
           in
           let bnd = "last_updated_partition_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_schema_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_recursive_structure_depth
         in
         ("recursive_structure_depth", arg) :: bnds
       in
       `Assoc bnds
    : stream_configs__bigquery_destination__schema_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stream_configs__bigquery_destination__schema_config

[@@@deriving.end]

type stream_configs__bigquery_destination = {
  dataset_uri : string prop;
  schema_config :
    stream_configs__bigquery_destination__schema_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stream_configs__bigquery_destination) -> ()

let yojson_of_stream_configs__bigquery_destination =
  (function
   | { dataset_uri = v_dataset_uri; schema_config = v_schema_config }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schema_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_stream_configs__bigquery_destination__schema_config)
               v_schema_config
           in
           let bnd = "schema_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_uri in
         ("dataset_uri", arg) :: bnds
       in
       `Assoc bnds
    : stream_configs__bigquery_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stream_configs__bigquery_destination

[@@@deriving.end]

type stream_configs = {
  resource_types : string prop list option; [@option]
  bigquery_destination : stream_configs__bigquery_destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stream_configs) -> ()

let yojson_of_stream_configs =
  (function
   | {
       resource_types = v_resource_types;
       bigquery_destination = v_bigquery_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_bigquery_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_stream_configs__bigquery_destination)
               v_bigquery_destination
           in
           let bnd = "bigquery_destination", arg in
           bnd :: bnds
       in
       let bnds =
         match v_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stream_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stream_configs

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

type google_healthcare_fhir_store = {
  complex_data_type_reference_parsing : string prop option; [@option]
  dataset : string prop;
  default_search_handling_strict : bool prop option; [@option]
  disable_referential_integrity : bool prop option; [@option]
  disable_resource_versioning : bool prop option; [@option]
  enable_history_import : bool prop option; [@option]
  enable_update_create : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  version : string prop;
  notification_config : notification_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stream_configs : stream_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_healthcare_fhir_store) -> ()

let yojson_of_google_healthcare_fhir_store =
  (function
   | {
       complex_data_type_reference_parsing =
         v_complex_data_type_reference_parsing;
       dataset = v_dataset;
       default_search_handling_strict =
         v_default_search_handling_strict;
       disable_referential_integrity =
         v_disable_referential_integrity;
       disable_resource_versioning = v_disable_resource_versioning;
       enable_history_import = v_enable_history_import;
       enable_update_create = v_enable_update_create;
       id = v_id;
       labels = v_labels;
       name = v_name;
       version = v_version;
       notification_config = v_notification_config;
       stream_configs = v_stream_configs;
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
         if Stdlib.( = ) [] v_stream_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stream_configs)
               v_stream_configs
           in
           let bnd = "stream_configs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_notification_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_config)
               v_notification_config
           in
           let bnd = "notification_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_enable_update_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_update_create", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_history_import with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_history_import", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_resource_versioning with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_resource_versioning", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_referential_integrity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_referential_integrity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_search_handling_strict with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_search_handling_strict", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset in
         ("dataset", arg) :: bnds
       in
       let bnds =
         match v_complex_data_type_reference_parsing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "complex_data_type_reference_parsing", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_healthcare_fhir_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_healthcare_fhir_store

[@@@deriving.end]

let notification_config ~pubsub_topic () : notification_config =
  { pubsub_topic }

let stream_configs__bigquery_destination__schema_config__last_updated_partition_config
    ?expiration_ms ~type_ () :
    stream_configs__bigquery_destination__schema_config__last_updated_partition_config
    =
  { expiration_ms; type_ }

let stream_configs__bigquery_destination__schema_config ?schema_type
    ?(last_updated_partition_config = []) ~recursive_structure_depth
    () : stream_configs__bigquery_destination__schema_config =
  {
    recursive_structure_depth;
    schema_type;
    last_updated_partition_config;
  }

let stream_configs__bigquery_destination ~dataset_uri ~schema_config
    () : stream_configs__bigquery_destination =
  { dataset_uri; schema_config }

let stream_configs ?resource_types ~bigquery_destination () :
    stream_configs =
  { resource_types; bigquery_destination }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_healthcare_fhir_store ?complex_data_type_reference_parsing
    ?default_search_handling_strict ?disable_referential_integrity
    ?disable_resource_versioning ?enable_history_import
    ?enable_update_create ?id ?labels ?(notification_config = [])
    ?(stream_configs = []) ?timeouts ~dataset ~name ~version () :
    google_healthcare_fhir_store =
  {
    complex_data_type_reference_parsing;
    dataset;
    default_search_handling_strict;
    disable_referential_integrity;
    disable_resource_versioning;
    enable_history_import;
    enable_update_create;
    id;
    labels;
    name;
    version;
    notification_config;
    stream_configs;
    timeouts;
  }

type t = {
  tf_name : string;
  complex_data_type_reference_parsing : string prop;
  dataset : string prop;
  default_search_handling_strict : bool prop;
  disable_referential_integrity : bool prop;
  disable_resource_versioning : bool prop;
  effective_labels : (string * string) list prop;
  enable_history_import : bool prop;
  enable_update_create : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
  version : string prop;
}

let make ?complex_data_type_reference_parsing
    ?default_search_handling_strict ?disable_referential_integrity
    ?disable_resource_versioning ?enable_history_import
    ?enable_update_create ?id ?labels ?(notification_config = [])
    ?(stream_configs = []) ?timeouts ~dataset ~name ~version __id =
  let __type = "google_healthcare_fhir_store" in
  let __attrs =
    ({
       tf_name = __id;
       complex_data_type_reference_parsing =
         Prop.computed __type __id
           "complex_data_type_reference_parsing";
       dataset = Prop.computed __type __id "dataset";
       default_search_handling_strict =
         Prop.computed __type __id "default_search_handling_strict";
       disable_referential_integrity =
         Prop.computed __type __id "disable_referential_integrity";
       disable_resource_versioning =
         Prop.computed __type __id "disable_resource_versioning";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_history_import =
         Prop.computed __type __id "enable_history_import";
       enable_update_create =
         Prop.computed __type __id "enable_update_create";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       self_link = Prop.computed __type __id "self_link";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_fhir_store
        (google_healthcare_fhir_store
           ?complex_data_type_reference_parsing
           ?default_search_handling_strict
           ?disable_referential_integrity
           ?disable_resource_versioning ?enable_history_import
           ?enable_update_create ?id ?labels ~notification_config
           ~stream_configs ?timeouts ~dataset ~name ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?complex_data_type_reference_parsing
    ?default_search_handling_strict ?disable_referential_integrity
    ?disable_resource_versioning ?enable_history_import
    ?enable_update_create ?id ?labels ?(notification_config = [])
    ?(stream_configs = []) ?timeouts ~dataset ~name ~version __id =
  let (r : _ Tf_core.resource) =
    make ?complex_data_type_reference_parsing
      ?default_search_handling_strict ?disable_referential_integrity
      ?disable_resource_versioning ?enable_history_import
      ?enable_update_create ?id ?labels ~notification_config
      ~stream_configs ?timeouts ~dataset ~name ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
