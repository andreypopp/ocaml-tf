(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type output_options = {
  batch_prefix : string prop option; [@option]
  batch_suffix : string prop option; [@option]
  cve20214428 : bool prop option; [@option]
  field_delimiter : string prop option; [@option]
  field_names : string prop list option; [@option]
  output_type : string prop option; [@option]
  record_delimiter : string prop option; [@option]
  record_prefix : string prop option; [@option]
  record_suffix : string prop option; [@option]
  record_template : string prop option; [@option]
  sample_rate : float prop option; [@option]
  timestamp_format : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_options) -> ()

let yojson_of_output_options =
  (function
   | {
       batch_prefix = v_batch_prefix;
       batch_suffix = v_batch_suffix;
       cve20214428 = v_cve20214428;
       field_delimiter = v_field_delimiter;
       field_names = v_field_names;
       output_type = v_output_type;
       record_delimiter = v_record_delimiter;
       record_prefix = v_record_prefix;
       record_suffix = v_record_suffix;
       record_template = v_record_template;
       sample_rate = v_sample_rate;
       timestamp_format = v_timestamp_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timestamp_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "field_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cve20214428 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cve20214428", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "batch_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "batch_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_options

[@@@deriving.end]

type cloudflare_logpush_job = {
  account_id : string prop option; [@option]
  dataset : string prop;
  destination_conf : string prop;
  enabled : bool prop option; [@option]
  filter : string prop option; [@option]
  frequency : string prop option; [@option]
  id : string prop option; [@option]
  kind : string prop option; [@option]
  logpull_options : string prop option; [@option]
  max_upload_bytes : float prop option; [@option]
  max_upload_interval_seconds : float prop option; [@option]
  max_upload_records : float prop option; [@option]
  name : string prop option; [@option]
  ownership_challenge : string prop option; [@option]
  zone_id : string prop option; [@option]
  output_options : output_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_logpush_job) -> ()

let yojson_of_cloudflare_logpush_job =
  (function
   | {
       account_id = v_account_id;
       dataset = v_dataset;
       destination_conf = v_destination_conf;
       enabled = v_enabled;
       filter = v_filter;
       frequency = v_frequency;
       id = v_id;
       kind = v_kind;
       logpull_options = v_logpull_options;
       max_upload_bytes = v_max_upload_bytes;
       max_upload_interval_seconds = v_max_upload_interval_seconds;
       max_upload_records = v_max_upload_records;
       name = v_name;
       ownership_challenge = v_ownership_challenge;
       zone_id = v_zone_id;
       output_options = v_output_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_output_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_output_options)
               v_output_options
           in
           let bnd = "output_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ownership_challenge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ownership_challenge", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_upload_records with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_upload_records", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_upload_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_upload_interval_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_upload_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_upload_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logpull_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logpull_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
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
         match v_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "frequency", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_conf
         in
         ("destination_conf", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset in
         ("dataset", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_logpush_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_logpush_job

[@@@deriving.end]

let output_options ?batch_prefix ?batch_suffix ?cve20214428
    ?field_delimiter ?field_names ?output_type ?record_delimiter
    ?record_prefix ?record_suffix ?record_template ?sample_rate
    ?timestamp_format () : output_options =
  {
    batch_prefix;
    batch_suffix;
    cve20214428;
    field_delimiter;
    field_names;
    output_type;
    record_delimiter;
    record_prefix;
    record_suffix;
    record_template;
    sample_rate;
    timestamp_format;
  }

let cloudflare_logpush_job ?account_id ?enabled ?filter ?frequency
    ?id ?kind ?logpull_options ?max_upload_bytes
    ?max_upload_interval_seconds ?max_upload_records ?name
    ?ownership_challenge ?zone_id ?(output_options = []) ~dataset
    ~destination_conf () : cloudflare_logpush_job =
  {
    account_id;
    dataset;
    destination_conf;
    enabled;
    filter;
    frequency;
    id;
    kind;
    logpull_options;
    max_upload_bytes;
    max_upload_interval_seconds;
    max_upload_records;
    name;
    ownership_challenge;
    zone_id;
    output_options;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  dataset : string prop;
  destination_conf : string prop;
  enabled : bool prop;
  filter : string prop;
  frequency : string prop;
  id : string prop;
  kind : string prop;
  logpull_options : string prop;
  max_upload_bytes : float prop;
  max_upload_interval_seconds : float prop;
  max_upload_records : float prop;
  name : string prop;
  ownership_challenge : string prop;
  zone_id : string prop;
}

let make ?account_id ?enabled ?filter ?frequency ?id ?kind
    ?logpull_options ?max_upload_bytes ?max_upload_interval_seconds
    ?max_upload_records ?name ?ownership_challenge ?zone_id
    ?(output_options = []) ~dataset ~destination_conf __id =
  let __type = "cloudflare_logpush_job" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       dataset = Prop.computed __type __id "dataset";
       destination_conf =
         Prop.computed __type __id "destination_conf";
       enabled = Prop.computed __type __id "enabled";
       filter = Prop.computed __type __id "filter";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       logpull_options = Prop.computed __type __id "logpull_options";
       max_upload_bytes =
         Prop.computed __type __id "max_upload_bytes";
       max_upload_interval_seconds =
         Prop.computed __type __id "max_upload_interval_seconds";
       max_upload_records =
         Prop.computed __type __id "max_upload_records";
       name = Prop.computed __type __id "name";
       ownership_challenge =
         Prop.computed __type __id "ownership_challenge";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_logpush_job
        (cloudflare_logpush_job ?account_id ?enabled ?filter
           ?frequency ?id ?kind ?logpull_options ?max_upload_bytes
           ?max_upload_interval_seconds ?max_upload_records ?name
           ?ownership_challenge ?zone_id ~output_options ~dataset
           ~destination_conf ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?enabled ?filter ?frequency ?id
    ?kind ?logpull_options ?max_upload_bytes
    ?max_upload_interval_seconds ?max_upload_records ?name
    ?ownership_challenge ?zone_id ?(output_options = []) ~dataset
    ~destination_conf __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?enabled ?filter ?frequency ?id ?kind
      ?logpull_options ?max_upload_bytes ?max_upload_interval_seconds
      ?max_upload_records ?name ?ownership_challenge ?zone_id
      ~output_options ~dataset ~destination_conf __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
