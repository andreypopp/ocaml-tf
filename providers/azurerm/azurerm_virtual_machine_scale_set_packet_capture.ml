(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  local_ip_address : string prop option; [@option]
  local_port : string prop option; [@option]
  protocol : string prop;
  remote_ip_address : string prop option; [@option]
  remote_port : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       local_ip_address = v_local_ip_address;
       local_port = v_local_port;
       protocol = v_protocol;
       remote_ip_address = v_remote_ip_address;
       remote_port = v_remote_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_remote_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remote_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remote_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remote_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_local_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_ip_address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type machine_scope = {
  exclude_instance_ids : string prop list option; [@option]
  include_instance_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : machine_scope) -> ()

let yojson_of_machine_scope =
  (function
   | {
       exclude_instance_ids = v_exclude_instance_ids;
       include_instance_ids = v_include_instance_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_include_instance_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include_instance_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_instance_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_instance_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : machine_scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_machine_scope

[@@@deriving.end]

type storage_location = {
  file_path : string prop option; [@option]
  storage_account_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_location) -> ()

let yojson_of_storage_location =
  (function
   | {
       file_path = v_file_path;
       storage_account_id = v_storage_account_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_location

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_virtual_machine_scale_set_packet_capture = {
  id : string prop option; [@option]
  maximum_bytes_per_packet : float prop option; [@option]
  maximum_bytes_per_session : float prop option; [@option]
  maximum_capture_duration_in_seconds : float prop option; [@option]
  name : string prop;
  network_watcher_id : string prop;
  virtual_machine_scale_set_id : string prop;
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
  machine_scope : machine_scope list;
      [@default []] [@yojson_drop_default ( = )]
  storage_location : storage_location list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_virtual_machine_scale_set_packet_capture) -> ()

let yojson_of_azurerm_virtual_machine_scale_set_packet_capture =
  (function
   | {
       id = v_id;
       maximum_bytes_per_packet = v_maximum_bytes_per_packet;
       maximum_bytes_per_session = v_maximum_bytes_per_session;
       maximum_capture_duration_in_seconds =
         v_maximum_capture_duration_in_seconds;
       name = v_name;
       network_watcher_id = v_network_watcher_id;
       virtual_machine_scale_set_id = v_virtual_machine_scale_set_id;
       filter = v_filter;
       machine_scope = v_machine_scope;
       storage_location = v_storage_location;
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
         if [] = v_storage_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_location)
               v_storage_location
           in
           let bnd = "storage_location", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_machine_scope then bnds
         else
           let arg =
             (yojson_of_list yojson_of_machine_scope) v_machine_scope
           in
           let bnd = "machine_scope", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_machine_scale_set_id
         in
         ("virtual_machine_scale_set_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_watcher_id
         in
         ("network_watcher_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_maximum_capture_duration_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_capture_duration_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_bytes_per_session with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_bytes_per_session", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_bytes_per_packet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_bytes_per_packet", arg in
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
    : azurerm_virtual_machine_scale_set_packet_capture ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_machine_scale_set_packet_capture

[@@@deriving.end]

let filter ?local_ip_address ?local_port ?remote_ip_address
    ?remote_port ~protocol () : filter =
  {
    local_ip_address;
    local_port;
    protocol;
    remote_ip_address;
    remote_port;
  }

let machine_scope ?exclude_instance_ids ?include_instance_ids () :
    machine_scope =
  { exclude_instance_ids; include_instance_ids }

let storage_location ?file_path ?storage_account_id () :
    storage_location =
  { file_path; storage_account_id }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_virtual_machine_scale_set_packet_capture ?id
    ?maximum_bytes_per_packet ?maximum_bytes_per_session
    ?maximum_capture_duration_in_seconds ?(filter = [])
    ?(machine_scope = []) ?timeouts ~name ~network_watcher_id
    ~virtual_machine_scale_set_id ~storage_location () :
    azurerm_virtual_machine_scale_set_packet_capture =
  {
    id;
    maximum_bytes_per_packet;
    maximum_bytes_per_session;
    maximum_capture_duration_in_seconds;
    name;
    network_watcher_id;
    virtual_machine_scale_set_id;
    filter;
    machine_scope;
    storage_location;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  maximum_bytes_per_packet : float prop;
  maximum_bytes_per_session : float prop;
  maximum_capture_duration_in_seconds : float prop;
  name : string prop;
  network_watcher_id : string prop;
  virtual_machine_scale_set_id : string prop;
}

let make ?id ?maximum_bytes_per_packet ?maximum_bytes_per_session
    ?maximum_capture_duration_in_seconds ?(filter = [])
    ?(machine_scope = []) ?timeouts ~name ~network_watcher_id
    ~virtual_machine_scale_set_id ~storage_location __id =
  let __type = "azurerm_virtual_machine_scale_set_packet_capture" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       maximum_bytes_per_packet =
         Prop.computed __type __id "maximum_bytes_per_packet";
       maximum_bytes_per_session =
         Prop.computed __type __id "maximum_bytes_per_session";
       maximum_capture_duration_in_seconds =
         Prop.computed __type __id
           "maximum_capture_duration_in_seconds";
       name = Prop.computed __type __id "name";
       network_watcher_id =
         Prop.computed __type __id "network_watcher_id";
       virtual_machine_scale_set_id =
         Prop.computed __type __id "virtual_machine_scale_set_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine_scale_set_packet_capture
        (azurerm_virtual_machine_scale_set_packet_capture ?id
           ?maximum_bytes_per_packet ?maximum_bytes_per_session
           ?maximum_capture_duration_in_seconds ~filter
           ~machine_scope ?timeouts ~name ~network_watcher_id
           ~virtual_machine_scale_set_id ~storage_location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?maximum_bytes_per_packet
    ?maximum_bytes_per_session ?maximum_capture_duration_in_seconds
    ?(filter = []) ?(machine_scope = []) ?timeouts ~name
    ~network_watcher_id ~virtual_machine_scale_set_id
    ~storage_location __id =
  let (r : _ Tf_core.resource) =
    make ?id ?maximum_bytes_per_packet ?maximum_bytes_per_session
      ?maximum_capture_duration_in_seconds ~filter ~machine_scope
      ?timeouts ~name ~network_watcher_id
      ~virtual_machine_scale_set_id ~storage_location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
