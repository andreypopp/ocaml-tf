(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_server__network = {
  alias_ips : string list option; [@option]  (** alias_ips *)
  ip : string option; [@option]  (** ip *)
  mac_address : string;  (** mac_address *)
  network_id : float;  (** network_id *)
}
[@@deriving yojson_of]
(** hcloud_server__network *)

type hcloud_server__public_net = {
  ipv4 : float option; [@option]  (** ipv4 *)
  ipv4_enabled : bool option; [@option]  (** ipv4_enabled *)
  ipv6 : float option; [@option]  (** ipv6 *)
  ipv6_enabled : bool option; [@option]  (** ipv6_enabled *)
}
[@@deriving yojson_of]
(** hcloud_server__public_net *)

type hcloud_server__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** hcloud_server__timeouts *)

type hcloud_server = {
  allow_deprecated_images : bool option; [@option]
      (** allow_deprecated_images *)
  backups : bool option; [@option]  (** backups *)
  datacenter : string option; [@option]  (** datacenter *)
  delete_protection : bool option; [@option]
      (** delete_protection *)
  firewall_ids : float list option; [@option]  (** firewall_ids *)
  id : string option; [@option]  (** id *)
  ignore_remote_firewall_ids : bool option; [@option]
      (** ignore_remote_firewall_ids *)
  image : string option; [@option]  (** image *)
  iso : string option; [@option]  (** iso *)
  keep_disk : bool option; [@option]  (** keep_disk *)
  labels : (string * string) list option; [@option]  (** labels *)
  location : string option; [@option]  (** location *)
  name : string;  (** name *)
  placement_group_id : float option; [@option]
      (** placement_group_id *)
  rebuild_protection : bool option; [@option]
      (** rebuild_protection *)
  rescue : string option; [@option]  (** rescue *)
  server_type : string;  (** server_type *)
  shutdown_before_deletion : bool option; [@option]
      (** shutdown_before_deletion *)
  ssh_keys : string list option; [@option]  (** ssh_keys *)
  user_data : string option; [@option]  (** user_data *)
  network : hcloud_server__network list;
  public_net : hcloud_server__public_net list;
  timeouts : hcloud_server__timeouts option;
}
[@@deriving yojson_of]
(** hcloud_server *)

let hcloud_server ?allow_deprecated_images ?backups ?datacenter
    ?delete_protection ?firewall_ids ?id ?ignore_remote_firewall_ids
    ?image ?iso ?keep_disk ?labels ?location ?placement_group_id
    ?rebuild_protection ?rescue ?shutdown_before_deletion ?ssh_keys
    ?user_data ?timeouts ~name ~server_type ~network ~public_net
    __resource_id =
  let __resource_type = "hcloud_server" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_server __resource);
  ()
