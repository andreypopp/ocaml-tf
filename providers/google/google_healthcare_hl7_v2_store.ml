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

type notification_configs = {
  filter : string prop option; [@option]
  pubsub_topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_configs) -> ()

let yojson_of_notification_configs =
  (function
   | { filter = v_filter; pubsub_topic = v_pubsub_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pubsub_topic in
         ("pubsub_topic", arg) :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notification_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_configs

[@@@deriving.end]

type parser_config = {
  allow_null_header : bool prop option; [@option]
  schema : string prop option; [@option]
  segment_terminator : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parser_config) -> ()

let yojson_of_parser_config =
  (function
   | {
       allow_null_header = v_allow_null_header;
       schema = v_schema;
       segment_terminator = v_segment_terminator;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segment_terminator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segment_terminator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_null_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_null_header", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : parser_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parser_config

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

type google_healthcare_hl7_v2_store = {
  dataset : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  reject_duplicate_message : bool prop option; [@option]
  notification_config : notification_config list;
      [@default []] [@yojson_drop_default ( = )]
  notification_configs : notification_configs list;
      [@default []] [@yojson_drop_default ( = )]
  parser_config : parser_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_healthcare_hl7_v2_store) -> ()

let yojson_of_google_healthcare_hl7_v2_store =
  (function
   | {
       dataset = v_dataset;
       id = v_id;
       labels = v_labels;
       name = v_name;
       reject_duplicate_message = v_reject_duplicate_message;
       notification_config = v_notification_config;
       notification_configs = v_notification_configs;
       parser_config = v_parser_config;
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
         if [] = v_parser_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parser_config) v_parser_config
           in
           let bnd = "parser_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_notification_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_configs)
               v_notification_configs
           in
           let bnd = "notification_configs", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_notification_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_config)
               v_notification_config
           in
           let bnd = "notification_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_reject_duplicate_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reject_duplicate_message", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_dataset in
         ("dataset", arg) :: bnds
       in
       `Assoc bnds
    : google_healthcare_hl7_v2_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_healthcare_hl7_v2_store

[@@@deriving.end]

let notification_config ~pubsub_topic () : notification_config =
  { pubsub_topic }

let notification_configs ?filter ~pubsub_topic () :
    notification_configs =
  { filter; pubsub_topic }

let parser_config ?allow_null_header ?schema ?segment_terminator
    ?version () : parser_config =
  { allow_null_header; schema; segment_terminator; version }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_healthcare_hl7_v2_store ?id ?labels
    ?reject_duplicate_message ?(notification_config = [])
    ?(notification_configs = []) ?(parser_config = []) ?timeouts
    ~dataset ~name () : google_healthcare_hl7_v2_store =
  {
    dataset;
    id;
    labels;
    name;
    reject_duplicate_message;
    notification_config;
    notification_configs;
    parser_config;
    timeouts;
  }

type t = {
  tf_name : string;
  dataset : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  reject_duplicate_message : bool prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?reject_duplicate_message
    ?(notification_config = []) ?(notification_configs = [])
    ?(parser_config = []) ?timeouts ~dataset ~name __id =
  let __type = "google_healthcare_hl7_v2_store" in
  let __attrs =
    ({
       tf_name = __id;
       dataset = Prop.computed __type __id "dataset";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       reject_duplicate_message =
         Prop.computed __type __id "reject_duplicate_message";
       self_link = Prop.computed __type __id "self_link";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_hl7_v2_store
        (google_healthcare_hl7_v2_store ?id ?labels
           ?reject_duplicate_message ~notification_config
           ~notification_configs ~parser_config ?timeouts ~dataset
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?reject_duplicate_message
    ?(notification_config = []) ?(notification_configs = [])
    ?(parser_config = []) ?timeouts ~dataset ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?reject_duplicate_message ~notification_config
      ~notification_configs ~parser_config ?timeouts ~dataset ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
