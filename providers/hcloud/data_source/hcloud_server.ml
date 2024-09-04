(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_server = {
  id : float prop option; [@option]
  name : string prop option; [@option]
  placement_group_id : float prop option; [@option]
  selector : string prop option; [@option]
  with_selector : string prop option; [@option]
  with_status : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_server) -> ()

let yojson_of_hcloud_server =
  (function
   | {
       id = v_id;
       name = v_name;
       placement_group_id = v_placement_group_id;
       selector = v_selector;
       with_selector = v_with_selector;
       with_status = v_with_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "with_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_with_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_placement_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "placement_group_id", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_server

[@@@deriving.end]

let hcloud_server ?id ?name ?placement_group_id ?selector
    ?with_selector ?with_status () : hcloud_server =
  {
    id;
    name;
    placement_group_id;
    selector;
    with_selector;
    with_status;
  }

type t = {
  tf_name : string;
  backup_window : string prop;
  backups : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  firewall_ids : float list prop;
  id : float prop;
  image : string prop;
  ipv4_address : string prop;
  ipv6_address : string prop;
  ipv6_network : string prop;
  iso : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  placement_group_id : float prop;
  primary_disk_size : float prop;
  rebuild_protection : bool prop;
  rescue : string prop;
  selector : string prop;
  server_type : string prop;
  status : string prop;
  with_selector : string prop;
  with_status : string list prop;
}

let make ?id ?name ?placement_group_id ?selector ?with_selector
    ?with_status __id =
  let __type = "hcloud_server" in
  let __attrs =
    ({
       tf_name = __id;
       backup_window = Prop.computed __type __id "backup_window";
       backups = Prop.computed __type __id "backups";
       datacenter = Prop.computed __type __id "datacenter";
       delete_protection =
         Prop.computed __type __id "delete_protection";
       firewall_ids = Prop.computed __type __id "firewall_ids";
       id = Prop.computed __type __id "id";
       image = Prop.computed __type __id "image";
       ipv4_address = Prop.computed __type __id "ipv4_address";
       ipv6_address = Prop.computed __type __id "ipv6_address";
       ipv6_network = Prop.computed __type __id "ipv6_network";
       iso = Prop.computed __type __id "iso";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       placement_group_id =
         Prop.computed __type __id "placement_group_id";
       primary_disk_size =
         Prop.computed __type __id "primary_disk_size";
       rebuild_protection =
         Prop.computed __type __id "rebuild_protection";
       rescue = Prop.computed __type __id "rescue";
       selector = Prop.computed __type __id "selector";
       server_type = Prop.computed __type __id "server_type";
       status = Prop.computed __type __id "status";
       with_selector = Prop.computed __type __id "with_selector";
       with_status = Prop.computed __type __id "with_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_server
        (hcloud_server ?id ?name ?placement_group_id ?selector
           ?with_selector ?with_status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?placement_group_id ?selector
    ?with_selector ?with_status __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?placement_group_id ?selector ?with_selector
      ?with_status __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
