(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type private_link = {
  location : string prop;
  private_link_target_id : string prop;
  request_message : string prop option; [@option]
  target_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_link) -> ()

let yojson_of_private_link =
  (function
   | {
       location = v_location;
       private_link_target_id = v_private_link_target_id;
       request_message = v_request_message;
       target_type = v_target_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_message", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_link_target_id
         in
         ("private_link_target_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : private_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_link

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

type azurerm_cdn_frontdoor_origin = {
  cdn_frontdoor_origin_group_id : string prop;
  certificate_name_check_enabled : bool prop;
  enabled : bool prop option; [@option]
  health_probes_enabled : bool prop option; [@option]
  host_name : string prop;
  http_port : float prop option; [@option]
  https_port : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  origin_host_header : string prop option; [@option]
  priority : float prop option; [@option]
  weight : float prop option; [@option]
  private_link : private_link list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_origin) -> ()

let yojson_of_azurerm_cdn_frontdoor_origin =
  (function
   | {
       cdn_frontdoor_origin_group_id =
         v_cdn_frontdoor_origin_group_id;
       certificate_name_check_enabled =
         v_certificate_name_check_enabled;
       enabled = v_enabled;
       health_probes_enabled = v_health_probes_enabled;
       host_name = v_host_name;
       http_port = v_http_port;
       https_port = v_https_port;
       id = v_id;
       name = v_name;
       origin_host_header = v_origin_host_header;
       priority = v_priority;
       weight = v_weight;
       private_link = v_private_link;
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
         let arg =
           yojson_of_list yojson_of_private_link v_private_link
         in
         ("private_link", arg) :: bnds
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
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
         match v_origin_host_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_host_header", arg in
             bnd :: bnds
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
         match v_https_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "https_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         match v_health_probes_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "health_probes_enabled", arg in
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
           yojson_of_prop yojson_of_bool
             v_certificate_name_check_enabled
         in
         ("certificate_name_check_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cdn_frontdoor_origin_group_id
         in
         ("cdn_frontdoor_origin_group_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_frontdoor_origin ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_origin

[@@@deriving.end]

let private_link ?request_message ?target_type ~location
    ~private_link_target_id () : private_link =
  { location; private_link_target_id; request_message; target_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_origin ?enabled ?health_probes_enabled
    ?http_port ?https_port ?id ?origin_host_header ?priority ?weight
    ?timeouts ~cdn_frontdoor_origin_group_id
    ~certificate_name_check_enabled ~host_name ~name ~private_link ()
    : azurerm_cdn_frontdoor_origin =
  {
    cdn_frontdoor_origin_group_id;
    certificate_name_check_enabled;
    enabled;
    health_probes_enabled;
    host_name;
    http_port;
    https_port;
    id;
    name;
    origin_host_header;
    priority;
    weight;
    private_link;
    timeouts;
  }

type t = {
  cdn_frontdoor_origin_group_id : string prop;
  certificate_name_check_enabled : bool prop;
  enabled : bool prop;
  health_probes_enabled : bool prop;
  host_name : string prop;
  http_port : float prop;
  https_port : float prop;
  id : string prop;
  name : string prop;
  origin_host_header : string prop;
  priority : float prop;
  weight : float prop;
}

let make ?enabled ?health_probes_enabled ?http_port ?https_port ?id
    ?origin_host_header ?priority ?weight ?timeouts
    ~cdn_frontdoor_origin_group_id ~certificate_name_check_enabled
    ~host_name ~name ~private_link __id =
  let __type = "azurerm_cdn_frontdoor_origin" in
  let __attrs =
    ({
       cdn_frontdoor_origin_group_id =
         Prop.computed __type __id "cdn_frontdoor_origin_group_id";
       certificate_name_check_enabled =
         Prop.computed __type __id "certificate_name_check_enabled";
       enabled = Prop.computed __type __id "enabled";
       health_probes_enabled =
         Prop.computed __type __id "health_probes_enabled";
       host_name = Prop.computed __type __id "host_name";
       http_port = Prop.computed __type __id "http_port";
       https_port = Prop.computed __type __id "https_port";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       origin_host_header =
         Prop.computed __type __id "origin_host_header";
       priority = Prop.computed __type __id "priority";
       weight = Prop.computed __type __id "weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_origin
        (azurerm_cdn_frontdoor_origin ?enabled ?health_probes_enabled
           ?http_port ?https_port ?id ?origin_host_header ?priority
           ?weight ?timeouts ~cdn_frontdoor_origin_group_id
           ~certificate_name_check_enabled ~host_name ~name
           ~private_link ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?health_probes_enabled ?http_port
    ?https_port ?id ?origin_host_header ?priority ?weight ?timeouts
    ~cdn_frontdoor_origin_group_id ~certificate_name_check_enabled
    ~host_name ~name ~private_link __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?health_probes_enabled ?http_port ?https_port ?id
      ?origin_host_header ?priority ?weight ?timeouts
      ~cdn_frontdoor_origin_group_id ~certificate_name_check_enabled
      ~host_name ~name ~private_link __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
