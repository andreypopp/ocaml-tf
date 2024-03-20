(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

let cloudflare_logpush_job ?account_id ?enabled ?filter ?frequency
    ?id ?kind ?logpull_options ?max_upload_bytes
    ?max_upload_interval_seconds ?max_upload_records ?name
    ?ownership_challenge ?zone_id ~dataset ~destination_conf () :
    cloudflare_logpush_job =
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
  }

type t = {
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
    ?max_upload_records ?name ?ownership_challenge ?zone_id ~dataset
    ~destination_conf __id =
  let __type = "cloudflare_logpush_job" in
  let __attrs =
    ({
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
           ?ownership_challenge ?zone_id ~dataset ~destination_conf
           ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?enabled ?filter ?frequency ?id
    ?kind ?logpull_options ?max_upload_bytes
    ?max_upload_interval_seconds ?max_upload_records ?name
    ?ownership_challenge ?zone_id ~dataset ~destination_conf __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?enabled ?filter ?frequency ?id ?kind
      ?logpull_options ?max_upload_bytes ?max_upload_interval_seconds
      ?max_upload_records ?name ?ownership_challenge ?zone_id
      ~dataset ~destination_conf __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
