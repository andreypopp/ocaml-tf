(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network = {
  alias_ips : string prop list option; [@option]
  ip : string prop option; [@option]
  network_id : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network) -> ()

let yojson_of_network =
  (function
   | {
       alias_ips = v_alias_ips;
       ip = v_ip;
       network_id = v_network_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_network_id in
         ("network_id", arg) :: bnds
       in
       let bnds =
         match v_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alias_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alias_ips", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network

[@@@deriving.end]

type public_net = {
  ipv4 : float prop option; [@option]
  ipv4_enabled : bool prop option; [@option]
  ipv6 : float prop option; [@option]
  ipv6_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_net) -> ()

let yojson_of_public_net =
  (function
   | {
       ipv4 = v_ipv4;
       ipv4_enabled = v_ipv4_enabled;
       ipv6 = v_ipv6;
       ipv6_enabled = v_ipv6_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ipv6_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ipv6_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv6", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ipv4_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv4", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : public_net -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_net

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type hcloud_server = {
  allow_deprecated_images : bool prop option; [@option]
  backups : bool prop option; [@option]
  datacenter : string prop option; [@option]
  delete_protection : bool prop option; [@option]
  firewall_ids : float prop list option; [@option]
  id : string prop option; [@option]
  ignore_remote_firewall_ids : bool prop option; [@option]
  image : string prop option; [@option]
  iso : string prop option; [@option]
  keep_disk : bool prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop option; [@option]
  name : string prop;
  placement_group_id : float prop option; [@option]
  rebuild_protection : bool prop option; [@option]
  rescue : string prop option; [@option]
  server_type : string prop;
  shutdown_before_deletion : bool prop option; [@option]
  ssh_keys : string prop list option; [@option]
  user_data : string prop option; [@option]
  network : network list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  public_net : public_net list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_server) -> ()

let yojson_of_hcloud_server =
  (function
   | {
       allow_deprecated_images = v_allow_deprecated_images;
       backups = v_backups;
       datacenter = v_datacenter;
       delete_protection = v_delete_protection;
       firewall_ids = v_firewall_ids;
       id = v_id;
       ignore_remote_firewall_ids = v_ignore_remote_firewall_ids;
       image = v_image;
       iso = v_iso;
       keep_disk = v_keep_disk;
       labels = v_labels;
       location = v_location;
       name = v_name;
       placement_group_id = v_placement_group_id;
       rebuild_protection = v_rebuild_protection;
       rescue = v_rescue;
       server_type = v_server_type;
       shutdown_before_deletion = v_shutdown_before_deletion;
       ssh_keys = v_ssh_keys;
       user_data = v_user_data;
       network = v_network;
       public_net = v_public_net;
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
         if Stdlib.( = ) [] v_public_net then bnds
         else
           let arg =
             (yojson_of_list yojson_of_public_net) v_public_net
           in
           let bnd = "public_net", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network then bnds
         else
           let arg = (yojson_of_list yojson_of_network) v_network in
           let bnd = "network", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ssh_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shutdown_before_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "shutdown_before_deletion", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_type in
         ("server_type", arg) :: bnds
       in
       let bnds =
         match v_rescue with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rescue", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rebuild_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rebuild_protection", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         match v_keep_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "keep_disk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iso with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iso", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_remote_firewall_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_remote_firewall_ids", arg in
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
         match v_firewall_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "firewall_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datacenter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datacenter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "backups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_deprecated_images with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_deprecated_images", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_server

[@@@deriving.end]

let network ?alias_ips ?ip ~network_id () : network =
  { alias_ips; ip; network_id }

let public_net ?ipv4 ?ipv4_enabled ?ipv6 ?ipv6_enabled () :
    public_net =
  { ipv4; ipv4_enabled; ipv6; ipv6_enabled }

let timeouts ?create () : timeouts = { create }

let hcloud_server ?allow_deprecated_images ?backups ?datacenter
    ?delete_protection ?firewall_ids ?id ?ignore_remote_firewall_ids
    ?image ?iso ?keep_disk ?labels ?location ?placement_group_id
    ?rebuild_protection ?rescue ?shutdown_before_deletion ?ssh_keys
    ?user_data ?timeouts ~name ~server_type ~network ~public_net () :
    hcloud_server =
  {
    allow_deprecated_images;
    backups;
    datacenter;
    delete_protection;
    firewall_ids;
    id;
    ignore_remote_firewall_ids;
    image;
    iso;
    keep_disk;
    labels;
    location;
    name;
    placement_group_id;
    rebuild_protection;
    rescue;
    server_type;
    shutdown_before_deletion;
    ssh_keys;
    user_data;
    network;
    public_net;
    timeouts;
  }

type t = {
  tf_name : string;
  allow_deprecated_images : bool prop;
  backup_window : string prop;
  backups : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  firewall_ids : float list prop;
  id : string prop;
  ignore_remote_firewall_ids : bool prop;
  image : string prop;
  ipv4_address : string prop;
  ipv6_address : string prop;
  ipv6_network : string prop;
  iso : string prop;
  keep_disk : bool prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  placement_group_id : float prop;
  primary_disk_size : float prop;
  rebuild_protection : bool prop;
  rescue : string prop;
  server_type : string prop;
  shutdown_before_deletion : bool prop;
  ssh_keys : string list prop;
  status : string prop;
  user_data : string prop;
}

let make ?allow_deprecated_images ?backups ?datacenter
    ?delete_protection ?firewall_ids ?id ?ignore_remote_firewall_ids
    ?image ?iso ?keep_disk ?labels ?location ?placement_group_id
    ?rebuild_protection ?rescue ?shutdown_before_deletion ?ssh_keys
    ?user_data ?timeouts ~name ~server_type ~network ~public_net __id
    =
  let __type = "hcloud_server" in
  let __attrs =
    ({
       tf_name = __id;
       allow_deprecated_images =
         Prop.computed __type __id "allow_deprecated_images";
       backup_window = Prop.computed __type __id "backup_window";
       backups = Prop.computed __type __id "backups";
       datacenter = Prop.computed __type __id "datacenter";
       delete_protection =
         Prop.computed __type __id "delete_protection";
       firewall_ids = Prop.computed __type __id "firewall_ids";
       id = Prop.computed __type __id "id";
       ignore_remote_firewall_ids =
         Prop.computed __type __id "ignore_remote_firewall_ids";
       image = Prop.computed __type __id "image";
       ipv4_address = Prop.computed __type __id "ipv4_address";
       ipv6_address = Prop.computed __type __id "ipv6_address";
       ipv6_network = Prop.computed __type __id "ipv6_network";
       iso = Prop.computed __type __id "iso";
       keep_disk = Prop.computed __type __id "keep_disk";
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
       server_type = Prop.computed __type __id "server_type";
       shutdown_before_deletion =
         Prop.computed __type __id "shutdown_before_deletion";
       ssh_keys = Prop.computed __type __id "ssh_keys";
       status = Prop.computed __type __id "status";
       user_data = Prop.computed __type __id "user_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_server
        (hcloud_server ?allow_deprecated_images ?backups ?datacenter
           ?delete_protection ?firewall_ids ?id
           ?ignore_remote_firewall_ids ?image ?iso ?keep_disk ?labels
           ?location ?placement_group_id ?rebuild_protection ?rescue
           ?shutdown_before_deletion ?ssh_keys ?user_data ?timeouts
           ~name ~server_type ~network ~public_net ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_deprecated_images ?backups ?datacenter
    ?delete_protection ?firewall_ids ?id ?ignore_remote_firewall_ids
    ?image ?iso ?keep_disk ?labels ?location ?placement_group_id
    ?rebuild_protection ?rescue ?shutdown_before_deletion ?ssh_keys
    ?user_data ?timeouts ~name ~server_type ~network ~public_net __id
    =
  let (r : _ Tf_core.resource) =
    make ?allow_deprecated_images ?backups ?datacenter
      ?delete_protection ?firewall_ids ?id
      ?ignore_remote_firewall_ids ?image ?iso ?keep_disk ?labels
      ?location ?placement_group_id ?rebuild_protection ?rescue
      ?shutdown_before_deletion ?ssh_keys ?user_data ?timeouts ~name
      ~server_type ~network ~public_net __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
