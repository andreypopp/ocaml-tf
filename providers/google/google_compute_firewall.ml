(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type allow = {
  ports : string prop list option; [@option]
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : allow) -> ()

let yojson_of_allow =
  (function
   | { ports = v_ports; protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ports", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : allow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allow

[@@@deriving.end]

type deny = {
  ports : string prop list option; [@option]
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deny) -> ()

let yojson_of_deny =
  (function
   | { ports = v_ports; protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ports", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deny -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deny

[@@@deriving.end]

type log_config = { metadata : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | { metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metadata in
         ("metadata", arg) :: bnds
       in
       `Assoc bnds
    : log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_config

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

type google_compute_firewall = {
  description : string prop option; [@option]
  destination_ranges : string prop list option; [@option]
  direction : string prop option; [@option]
  disabled : bool prop option; [@option]
  enable_logging : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  network : string prop;
  priority : float prop option; [@option]
  project : string prop option; [@option]
  source_ranges : string prop list option; [@option]
  source_service_accounts : string prop list option; [@option]
  source_tags : string prop list option; [@option]
  target_service_accounts : string prop list option; [@option]
  target_tags : string prop list option; [@option]
  allow : allow list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  deny : deny list; [@default []] [@yojson_drop_default Stdlib.( = )]
  log_config : log_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_firewall) -> ()

let yojson_of_google_compute_firewall =
  (function
   | {
       description = v_description;
       destination_ranges = v_destination_ranges;
       direction = v_direction;
       disabled = v_disabled;
       enable_logging = v_enable_logging;
       id = v_id;
       name = v_name;
       network = v_network;
       priority = v_priority;
       project = v_project;
       source_ranges = v_source_ranges;
       source_service_accounts = v_source_service_accounts;
       source_tags = v_source_tags;
       target_service_accounts = v_target_service_accounts;
       target_tags = v_target_tags;
       allow = v_allow;
       deny = v_deny;
       log_config = v_log_config;
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
         if Stdlib.( = ) [] v_log_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log_config) v_log_config
           in
           let bnd = "log_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deny then bnds
         else
           let arg = (yojson_of_list yojson_of_deny) v_deny in
           let bnd = "deny", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow then bnds
         else
           let arg = (yojson_of_list yojson_of_allow) v_allow in
           let bnd = "allow", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_service_accounts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_service_accounts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_service_accounts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_service_accounts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_ranges", arg in
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
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
       let bnds =
         match v_enable_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_direction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "direction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_ranges", arg in
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
       `Assoc bnds
    : google_compute_firewall -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_firewall

[@@@deriving.end]

let allow ?ports ~protocol () : allow = { ports; protocol }
let deny ?ports ~protocol () : deny = { ports; protocol }
let log_config ~metadata () : log_config = { metadata }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_firewall ?description ?destination_ranges
    ?direction ?disabled ?enable_logging ?id ?priority ?project
    ?source_ranges ?source_service_accounts ?source_tags
    ?target_service_accounts ?target_tags ?(log_config = [])
    ?timeouts ~name ~network ~allow ~deny () :
    google_compute_firewall =
  {
    description;
    destination_ranges;
    direction;
    disabled;
    enable_logging;
    id;
    name;
    network;
    priority;
    project;
    source_ranges;
    source_service_accounts;
    source_tags;
    target_service_accounts;
    target_tags;
    allow;
    deny;
    log_config;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  destination_ranges : string list prop;
  direction : string prop;
  disabled : bool prop;
  enable_logging : bool prop;
  id : string prop;
  name : string prop;
  network : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  source_ranges : string list prop;
  source_service_accounts : string list prop;
  source_tags : string list prop;
  target_service_accounts : string list prop;
  target_tags : string list prop;
}

let make ?description ?destination_ranges ?direction ?disabled
    ?enable_logging ?id ?priority ?project ?source_ranges
    ?source_service_accounts ?source_tags ?target_service_accounts
    ?target_tags ?(log_config = []) ?timeouts ~name ~network ~allow
    ~deny __id =
  let __type = "google_compute_firewall" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       destination_ranges =
         Prop.computed __type __id "destination_ranges";
       direction = Prop.computed __type __id "direction";
       disabled = Prop.computed __type __id "disabled";
       enable_logging = Prop.computed __type __id "enable_logging";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       source_ranges = Prop.computed __type __id "source_ranges";
       source_service_accounts =
         Prop.computed __type __id "source_service_accounts";
       source_tags = Prop.computed __type __id "source_tags";
       target_service_accounts =
         Prop.computed __type __id "target_service_accounts";
       target_tags = Prop.computed __type __id "target_tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_firewall
        (google_compute_firewall ?description ?destination_ranges
           ?direction ?disabled ?enable_logging ?id ?priority
           ?project ?source_ranges ?source_service_accounts
           ?source_tags ?target_service_accounts ?target_tags
           ~log_config ?timeouts ~name ~network ~allow ~deny ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?destination_ranges ?direction
    ?disabled ?enable_logging ?id ?priority ?project ?source_ranges
    ?source_service_accounts ?source_tags ?target_service_accounts
    ?target_tags ?(log_config = []) ?timeouts ~name ~network ~allow
    ~deny __id =
  let (r : _ Tf_core.resource) =
    make ?description ?destination_ranges ?direction ?disabled
      ?enable_logging ?id ?priority ?project ?source_ranges
      ?source_service_accounts ?source_tags ?target_service_accounts
      ?target_tags ~log_config ?timeouts ~name ~network ~allow ~deny
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
