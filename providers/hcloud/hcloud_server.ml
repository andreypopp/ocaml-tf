(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type network = {
  alias_ips : string prop list option; [@option]  (** alias_ips *)
  ip : string prop option; [@option]  (** ip *)
  network_id : float prop;  (** network_id *)
}
[@@deriving yojson_of]
(** network *)

type public_net = {
  ipv4 : float prop option; [@option]  (** ipv4 *)
  ipv4_enabled : bool prop option; [@option]  (** ipv4_enabled *)
  ipv6 : float prop option; [@option]  (** ipv6 *)
  ipv6_enabled : bool prop option; [@option]  (** ipv6_enabled *)
}
[@@deriving yojson_of]
(** public_net *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type hcloud_server = {
  allow_deprecated_images : bool prop option; [@option]
      (** allow_deprecated_images *)
  backups : bool prop option; [@option]  (** backups *)
  datacenter : string prop option; [@option]  (** datacenter *)
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  firewall_ids : float prop list option; [@option]
      (** firewall_ids *)
  id : string prop option; [@option]  (** id *)
  ignore_remote_firewall_ids : bool prop option; [@option]
      (** ignore_remote_firewall_ids *)
  image : string prop option; [@option]  (** image *)
  iso : string prop option; [@option]  (** iso *)
  keep_disk : bool prop option; [@option]  (** keep_disk *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  location : string prop option; [@option]  (** location *)
  name : string prop;  (** name *)
  placement_group_id : float prop option; [@option]
      (** placement_group_id *)
  rebuild_protection : bool prop option; [@option]
      (** rebuild_protection *)
  rescue : string prop option; [@option]  (** rescue *)
  server_type : string prop;  (** server_type *)
  shutdown_before_deletion : bool prop option; [@option]
      (** shutdown_before_deletion *)
  ssh_keys : string prop list option; [@option]  (** ssh_keys *)
  user_data : string prop option; [@option]  (** user_data *)
  network : network list;
  public_net : public_net list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** hcloud_server *)

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

let register ?tf_module ?allow_deprecated_images ?backups ?datacenter
    ?delete_protection ?firewall_ids ?id ?ignore_remote_firewall_ids
    ?image ?iso ?keep_disk ?labels ?location ?placement_group_id
    ?rebuild_protection ?rescue ?shutdown_before_deletion ?ssh_keys
    ?user_data ?timeouts ~name ~server_type ~network ~public_net
    __resource_id =
  let __resource_type = "hcloud_server" in
  let __resource =
    hcloud_server ?allow_deprecated_images ?backups ?datacenter
      ?delete_protection ?firewall_ids ?id
      ?ignore_remote_firewall_ids ?image ?iso ?keep_disk ?labels
      ?location ?placement_group_id ?rebuild_protection ?rescue
      ?shutdown_before_deletion ?ssh_keys ?user_data ?timeouts ~name
      ~server_type ~network ~public_net ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_server __resource);
  let __resource_attributes =
    ({
       allow_deprecated_images =
         Prop.computed __resource_type __resource_id
           "allow_deprecated_images";
       backup_window =
         Prop.computed __resource_type __resource_id "backup_window";
       backups =
         Prop.computed __resource_type __resource_id "backups";
       datacenter =
         Prop.computed __resource_type __resource_id "datacenter";
       delete_protection =
         Prop.computed __resource_type __resource_id
           "delete_protection";
       firewall_ids =
         Prop.computed __resource_type __resource_id "firewall_ids";
       id = Prop.computed __resource_type __resource_id "id";
       ignore_remote_firewall_ids =
         Prop.computed __resource_type __resource_id
           "ignore_remote_firewall_ids";
       image = Prop.computed __resource_type __resource_id "image";
       ipv4_address =
         Prop.computed __resource_type __resource_id "ipv4_address";
       ipv6_address =
         Prop.computed __resource_type __resource_id "ipv6_address";
       ipv6_network =
         Prop.computed __resource_type __resource_id "ipv6_network";
       iso = Prop.computed __resource_type __resource_id "iso";
       keep_disk =
         Prop.computed __resource_type __resource_id "keep_disk";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       placement_group_id =
         Prop.computed __resource_type __resource_id
           "placement_group_id";
       primary_disk_size =
         Prop.computed __resource_type __resource_id
           "primary_disk_size";
       rebuild_protection =
         Prop.computed __resource_type __resource_id
           "rebuild_protection";
       rescue = Prop.computed __resource_type __resource_id "rescue";
       server_type =
         Prop.computed __resource_type __resource_id "server_type";
       shutdown_before_deletion =
         Prop.computed __resource_type __resource_id
           "shutdown_before_deletion";
       ssh_keys =
         Prop.computed __resource_type __resource_id "ssh_keys";
       status = Prop.computed __resource_type __resource_id "status";
       user_data =
         Prop.computed __resource_type __resource_id "user_data";
     }
      : t)
  in
  __resource_attributes
