(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type servers = {
  backup_window : string prop;
  backups : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  firewall_ids : float prop list;
  id : float prop;
  image : string prop;
  ipv4_address : string prop;
  ipv6_address : string prop;
  ipv6_network : string prop;
  iso : string prop;
  labels : (string * string prop) list;
  location : string prop;
  name : string prop;
  placement_group_id : float prop;
  primary_disk_size : float prop;
  rebuild_protection : bool prop;
  rescue : string prop;
  server_type : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : servers) -> ()

let yojson_of_servers =
  (function
   | {
       backup_window = v_backup_window;
       backups = v_backups;
       datacenter = v_datacenter;
       delete_protection = v_delete_protection;
       firewall_ids = v_firewall_ids;
       id = v_id;
       image = v_image;
       ipv4_address = v_ipv4_address;
       ipv6_address = v_ipv6_address;
       ipv6_network = v_ipv6_network;
       iso = v_iso;
       labels = v_labels;
       location = v_location;
       name = v_name;
       placement_group_id = v_placement_group_id;
       primary_disk_size = v_primary_disk_size;
       rebuild_protection = v_rebuild_protection;
       rescue = v_rescue;
       server_type = v_server_type;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_type in
         ("server_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rescue in
         ("rescue", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_rebuild_protection
         in
         ("rebuild_protection", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_primary_disk_size
         in
         ("primary_disk_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_placement_group_id
         in
         ("placement_group_id", arg) :: bnds
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
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iso in
         ("iso", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv6_network in
         ("ipv6_network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv6_address in
         ("ipv6_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv4_address in
         ("ipv4_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_float)
             v_firewall_ids
         in
         ("firewall_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_protection
         in
         ("delete_protection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_datacenter in
         ("datacenter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_backups in
         ("backups", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_backup_window in
         ("backup_window", arg) :: bnds
       in
       `Assoc bnds
    : servers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_servers

[@@@deriving.end]

type hcloud_servers = {
  id : string prop option; [@option]
  with_selector : string prop option; [@option]
  with_status : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_servers) -> ()

let yojson_of_hcloud_servers =
  (function
   | {
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_servers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_servers

[@@@deriving.end]

let hcloud_servers ?id ?with_selector ?with_status () :
    hcloud_servers =
  { id; with_selector; with_status }

type t = {
  id : string prop;
  servers : servers list prop;
  with_selector : string prop;
  with_status : string list prop;
}

let make ?id ?with_selector ?with_status __id =
  let __type = "hcloud_servers" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       servers = Prop.computed __type __id "servers";
       with_selector = Prop.computed __type __id "with_selector";
       with_status = Prop.computed __type __id "with_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_servers
        (hcloud_servers ?id ?with_selector ?with_status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?with_selector ?with_status __id =
  let (r : _ Tf_core.resource) =
    make ?id ?with_selector ?with_status __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
