(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type draft__content_link__hash = {
  algorithm : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : draft__content_link__hash) -> ()

let yojson_of_draft__content_link__hash =
  (function
   | { algorithm = v_algorithm; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : draft__content_link__hash -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_draft__content_link__hash

[@@@deriving.end]

type draft__content_link = {
  uri : string prop;
  version : string prop option; [@option]
  hash : draft__content_link__hash list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : draft__content_link) -> ()

let yojson_of_draft__content_link =
  (function
   | { uri = v_uri; version = v_version; hash = v_hash } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_hash then bnds
         else
           let arg =
             (yojson_of_list yojson_of_draft__content_link__hash)
               v_hash
           in
           let bnd = "hash", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : draft__content_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_draft__content_link

[@@@deriving.end]

type draft__parameters = {
  default_value : string prop option; [@option]
  key : string prop;
  mandatory : bool prop option; [@option]
  position : float prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : draft__parameters) -> ()

let yojson_of_draft__parameters =
  (function
   | {
       default_value = v_default_value;
       key = v_key;
       mandatory = v_mandatory;
       position = v_position;
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
         match v_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mandatory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mandatory", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : draft__parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_draft__parameters

[@@@deriving.end]

type draft = {
  edit_mode_enabled : bool prop option; [@option]
  output_types : string prop list option; [@option]
  content_link : draft__content_link list;
      [@default []] [@yojson_drop_default ( = )]
  parameters : draft__parameters list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : draft) -> ()

let yojson_of_draft =
  (function
   | {
       edit_mode_enabled = v_edit_mode_enabled;
       output_types = v_output_types;
       content_link = v_content_link;
       parameters = v_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_draft__parameters)
               v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_content_link then bnds
         else
           let arg =
             (yojson_of_list yojson_of_draft__content_link)
               v_content_link
           in
           let bnd = "content_link", arg in
           bnd :: bnds
       in
       let bnds =
         match v_output_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "output_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edit_mode_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "edit_mode_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : draft -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_draft

[@@@deriving.end]

type publish_content_link__hash = {
  algorithm : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : publish_content_link__hash) -> ()

let yojson_of_publish_content_link__hash =
  (function
   | { algorithm = v_algorithm; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : publish_content_link__hash -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_publish_content_link__hash

[@@@deriving.end]

type publish_content_link = {
  uri : string prop;
  version : string prop option; [@option]
  hash : publish_content_link__hash list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : publish_content_link) -> ()

let yojson_of_publish_content_link =
  (function
   | { uri = v_uri; version = v_version; hash = v_hash } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_hash then bnds
         else
           let arg =
             (yojson_of_list yojson_of_publish_content_link__hash)
               v_hash
           in
           let bnd = "hash", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : publish_content_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_publish_content_link

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type job_schedule = {
  job_schedule_id : string prop;
  parameters : (string * string prop) list;
  run_on : string prop;
  schedule_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : job_schedule) -> ()

let yojson_of_job_schedule =
  (function
   | {
       job_schedule_id = v_job_schedule_id;
       parameters = v_parameters;
       run_on = v_run_on;
       schedule_name = v_schedule_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule_name in
         ("schedule_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_on in
         ("run_on", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_parameters
         in
         ("parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_job_schedule_id
         in
         ("job_schedule_id", arg) :: bnds
       in
       `Assoc bnds
    : job_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_job_schedule

[@@@deriving.end]

type azurerm_automation_runbook = {
  automation_account_name : string prop;
  content : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  job_schedule : job_schedule list option; [@option]
  location : string prop;
  log_activity_trace_level : float prop option; [@option]
  log_progress : bool prop;
  log_verbose : bool prop;
  name : string prop;
  resource_group_name : string prop;
  runbook_type : string prop;
  tags : (string * string prop) list option; [@option]
  draft : draft list; [@default []] [@yojson_drop_default ( = )]
  publish_content_link : publish_content_link list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_runbook) -> ()

let yojson_of_azurerm_automation_runbook =
  (function
   | {
       automation_account_name = v_automation_account_name;
       content = v_content;
       description = v_description;
       id = v_id;
       job_schedule = v_job_schedule;
       location = v_location;
       log_activity_trace_level = v_log_activity_trace_level;
       log_progress = v_log_progress;
       log_verbose = v_log_verbose;
       name = v_name;
       resource_group_name = v_resource_group_name;
       runbook_type = v_runbook_type;
       tags = v_tags;
       draft = v_draft;
       publish_content_link = v_publish_content_link;
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
         if [] = v_publish_content_link then bnds
         else
           let arg =
             (yojson_of_list yojson_of_publish_content_link)
               v_publish_content_link
           in
           let bnd = "publish_content_link", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_draft then bnds
         else
           let arg = (yojson_of_list yojson_of_draft) v_draft in
           let bnd = "draft", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runbook_type in
         ("runbook_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_log_verbose in
         ("log_verbose", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_log_progress in
         ("log_progress", arg) :: bnds
       in
       let bnds =
         match v_log_activity_trace_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "log_activity_trace_level", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_job_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_job_schedule v in
             let bnd = "job_schedule", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_runbook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_runbook

[@@@deriving.end]

let draft__content_link__hash ~algorithm ~value () :
    draft__content_link__hash =
  { algorithm; value }

let draft__content_link ?version ?(hash = []) ~uri () :
    draft__content_link =
  { uri; version; hash }

let draft__parameters ?default_value ?mandatory ?position ~key ~type_
    () : draft__parameters =
  { default_value; key; mandatory; position; type_ }

let draft ?edit_mode_enabled ?output_types ?(content_link = [])
    ?(parameters = []) () : draft =
  { edit_mode_enabled; output_types; content_link; parameters }

let publish_content_link__hash ~algorithm ~value () :
    publish_content_link__hash =
  { algorithm; value }

let publish_content_link ?version ?(hash = []) ~uri () :
    publish_content_link =
  { uri; version; hash }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_runbook ?content ?description ?id
    ?job_schedule ?log_activity_trace_level ?tags ?(draft = [])
    ?(publish_content_link = []) ?timeouts ~automation_account_name
    ~location ~log_progress ~log_verbose ~name ~resource_group_name
    ~runbook_type () : azurerm_automation_runbook =
  {
    automation_account_name;
    content;
    description;
    id;
    job_schedule;
    location;
    log_activity_trace_level;
    log_progress;
    log_verbose;
    name;
    resource_group_name;
    runbook_type;
    tags;
    draft;
    publish_content_link;
    timeouts;
  }

type t = {
  tf_name : string;
  automation_account_name : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  job_schedule : job_schedule list prop;
  location : string prop;
  log_activity_trace_level : float prop;
  log_progress : bool prop;
  log_verbose : bool prop;
  name : string prop;
  resource_group_name : string prop;
  runbook_type : string prop;
  tags : (string * string) list prop;
}

let make ?content ?description ?id ?job_schedule
    ?log_activity_trace_level ?tags ?(draft = [])
    ?(publish_content_link = []) ?timeouts ~automation_account_name
    ~location ~log_progress ~log_verbose ~name ~resource_group_name
    ~runbook_type __id =
  let __type = "azurerm_automation_runbook" in
  let __attrs =
    ({
       tf_name = __id;
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       content = Prop.computed __type __id "content";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       job_schedule = Prop.computed __type __id "job_schedule";
       location = Prop.computed __type __id "location";
       log_activity_trace_level =
         Prop.computed __type __id "log_activity_trace_level";
       log_progress = Prop.computed __type __id "log_progress";
       log_verbose = Prop.computed __type __id "log_verbose";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       runbook_type = Prop.computed __type __id "runbook_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_runbook
        (azurerm_automation_runbook ?content ?description ?id
           ?job_schedule ?log_activity_trace_level ?tags ~draft
           ~publish_content_link ?timeouts ~automation_account_name
           ~location ~log_progress ~log_verbose ~name
           ~resource_group_name ~runbook_type ());
    attrs = __attrs;
  }

let register ?tf_module ?content ?description ?id ?job_schedule
    ?log_activity_trace_level ?tags ?(draft = [])
    ?(publish_content_link = []) ?timeouts ~automation_account_name
    ~location ~log_progress ~log_verbose ~name ~resource_group_name
    ~runbook_type __id =
  let (r : _ Tf_core.resource) =
    make ?content ?description ?id ?job_schedule
      ?log_activity_trace_level ?tags ~draft ~publish_content_link
      ?timeouts ~automation_account_name ~location ~log_progress
      ~log_verbose ~name ~resource_group_name ~runbook_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
