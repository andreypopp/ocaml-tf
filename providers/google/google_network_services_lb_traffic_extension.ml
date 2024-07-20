(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type extension_chains__extensions = {
  authority : string prop option; [@option]
  fail_open : bool prop option; [@option]
  forward_headers : string prop list option; [@option]
  name : string prop;
  service : string prop;
  supported_events : string prop list option; [@option]
  timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extension_chains__extensions) -> ()

let yojson_of_extension_chains__extensions =
  (function
   | {
       authority = v_authority;
       fail_open = v_fail_open;
       forward_headers = v_forward_headers;
       name = v_name;
       service = v_service;
       supported_events = v_supported_events;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_supported_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "supported_events", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_forward_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "forward_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fail_open with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_open", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authority", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extension_chains__extensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extension_chains__extensions

[@@@deriving.end]

type extension_chains__match_condition = {
  cel_expression : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extension_chains__match_condition) -> ()

let yojson_of_extension_chains__match_condition =
  (function
   | { cel_expression = v_cel_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cel_expression
         in
         ("cel_expression", arg) :: bnds
       in
       `Assoc bnds
    : extension_chains__match_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extension_chains__match_condition

[@@@deriving.end]

type extension_chains = {
  name : string prop;
  extensions : extension_chains__extensions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_condition : extension_chains__match_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extension_chains) -> ()

let yojson_of_extension_chains =
  (function
   | {
       name = v_name;
       extensions = v_extensions;
       match_condition = v_match_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extension_chains__match_condition)
               v_match_condition
           in
           let bnd = "match_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extensions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extension_chains__extensions)
               v_extensions
           in
           let bnd = "extensions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : extension_chains -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extension_chains

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

type google_network_services_lb_traffic_extension = {
  description : string prop option; [@option]
  forwarding_rules : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  load_balancing_scheme : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  extension_chains : extension_chains list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_services_lb_traffic_extension) -> ()

let yojson_of_google_network_services_lb_traffic_extension =
  (function
   | {
       description = v_description;
       forwarding_rules = v_forwarding_rules;
       id = v_id;
       labels = v_labels;
       load_balancing_scheme = v_load_balancing_scheme;
       location = v_location;
       name = v_name;
       project = v_project;
       extension_chains = v_extension_chains;
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
         if Stdlib.( = ) [] v_extension_chains then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extension_chains)
               v_extension_chains
           in
           let bnd = "extension_chains", arg in
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_load_balancing_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancing_scheme", arg in
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
         if Stdlib.( = ) [] v_forwarding_rules then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_forwarding_rules
           in
           let bnd = "forwarding_rules", arg in
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
    : google_network_services_lb_traffic_extension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_services_lb_traffic_extension

[@@@deriving.end]

let extension_chains__extensions ?authority ?fail_open
    ?forward_headers ?supported_events ?timeout ~name ~service () :
    extension_chains__extensions =
  {
    authority;
    fail_open;
    forward_headers;
    name;
    service;
    supported_events;
    timeout;
  }

let extension_chains__match_condition ~cel_expression () :
    extension_chains__match_condition =
  { cel_expression }

let extension_chains ~name ~extensions ~match_condition () :
    extension_chains =
  { name; extensions; match_condition }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_services_lb_traffic_extension ?description ?id
    ?labels ?load_balancing_scheme ?project ?timeouts
    ~forwarding_rules ~location ~name ~extension_chains () :
    google_network_services_lb_traffic_extension =
  {
    description;
    forwarding_rules;
    id;
    labels;
    load_balancing_scheme;
    location;
    name;
    project;
    extension_chains;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  effective_labels : (string * string) list prop;
  forwarding_rules : string list prop;
  id : string prop;
  labels : (string * string) list prop;
  load_balancing_scheme : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?labels ?load_balancing_scheme ?project
    ?timeouts ~forwarding_rules ~location ~name ~extension_chains
    __id =
  let __type = "google_network_services_lb_traffic_extension" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       forwarding_rules =
         Prop.computed __type __id "forwarding_rules";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       load_balancing_scheme =
         Prop.computed __type __id "load_balancing_scheme";
       location = Prop.computed __type __id "location";
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
      yojson_of_google_network_services_lb_traffic_extension
        (google_network_services_lb_traffic_extension ?description
           ?id ?labels ?load_balancing_scheme ?project ?timeouts
           ~forwarding_rules ~location ~name ~extension_chains ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels
    ?load_balancing_scheme ?project ?timeouts ~forwarding_rules
    ~location ~name ~extension_chains __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?load_balancing_scheme ?project
      ?timeouts ~forwarding_rules ~location ~name ~extension_chains
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
