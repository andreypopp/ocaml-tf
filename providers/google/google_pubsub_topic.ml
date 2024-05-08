(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type message_storage_policy = {
  allowed_persistence_regions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : message_storage_policy) -> ()

let yojson_of_message_storage_policy =
  (function
   | { allowed_persistence_regions = v_allowed_persistence_regions }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_allowed_persistence_regions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_persistence_regions
           in
           let bnd = "allowed_persistence_regions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : message_storage_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_message_storage_policy

[@@@deriving.end]

type schema_settings = {
  encoding : string prop option; [@option]
  schema : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_settings) -> ()

let yojson_of_schema_settings =
  (function
   | { encoding = v_encoding; schema = v_schema } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schema_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_settings

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

type google_pubsub_topic = {
  id : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  message_retention_duration : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  message_storage_policy : message_storage_policy list;
      [@default []] [@yojson_drop_default ( = )]
  schema_settings : schema_settings list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_pubsub_topic) -> ()

let yojson_of_google_pubsub_topic =
  (function
   | {
       id = v_id;
       kms_key_name = v_kms_key_name;
       labels = v_labels;
       message_retention_duration = v_message_retention_duration;
       name = v_name;
       project = v_project;
       message_storage_policy = v_message_storage_policy;
       schema_settings = v_schema_settings;
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
         if [] = v_schema_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schema_settings)
               v_schema_settings
           in
           let bnd = "schema_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_message_storage_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_message_storage_policy)
               v_message_storage_policy
           in
           let bnd = "message_storage_policy", arg in
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
         match v_message_retention_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_retention_duration", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_pubsub_topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_pubsub_topic

[@@@deriving.end]

let message_storage_policy ~allowed_persistence_regions () :
    message_storage_policy =
  { allowed_persistence_regions }

let schema_settings ?encoding ~schema () : schema_settings =
  { encoding; schema }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_pubsub_topic ?id ?kms_key_name ?labels
    ?message_retention_duration ?project
    ?(message_storage_policy = []) ?(schema_settings = []) ?timeouts
    ~name () : google_pubsub_topic =
  {
    id;
    kms_key_name;
    labels;
    message_retention_duration;
    name;
    project;
    message_storage_policy;
    schema_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  effective_labels : (string * string) list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  message_retention_duration : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?kms_key_name ?labels ?message_retention_duration
    ?project ?(message_storage_policy = []) ?(schema_settings = [])
    ?timeouts ~name __id =
  let __type = "google_pubsub_topic" in
  let __attrs =
    ({
       tf_name = __id;
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       message_retention_duration =
         Prop.computed __type __id "message_retention_duration";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_topic
        (google_pubsub_topic ?id ?kms_key_name ?labels
           ?message_retention_duration ?project
           ~message_storage_policy ~schema_settings ?timeouts ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_name ?labels
    ?message_retention_duration ?project
    ?(message_storage_policy = []) ?(schema_settings = []) ?timeouts
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_name ?labels ?message_retention_duration
      ?project ~message_storage_policy ~schema_settings ?timeouts
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
