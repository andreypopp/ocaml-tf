(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_firewall__inbound_rule = {
  port_range : string option; [@option]  (** port_range *)
  protocol : string;  (** protocol *)
  source_addresses : string list option; [@option]
      (** source_addresses *)
  source_droplet_ids : float list option; [@option]
      (** source_droplet_ids *)
  source_kubernetes_ids : string list option; [@option]
      (** source_kubernetes_ids *)
  source_load_balancer_uids : string list option; [@option]
      (** source_load_balancer_uids *)
  source_tags : string list option; [@option]  (** source_tags *)
}
[@@deriving yojson_of]
(** digitalocean_firewall__inbound_rule *)

type digitalocean_firewall__outbound_rule = {
  destination_addresses : string list option; [@option]
      (** destination_addresses *)
  destination_droplet_ids : float list option; [@option]
      (** destination_droplet_ids *)
  destination_kubernetes_ids : string list option; [@option]
      (** destination_kubernetes_ids *)
  destination_load_balancer_uids : string list option; [@option]
      (** destination_load_balancer_uids *)
  destination_tags : string list option; [@option]
      (** destination_tags *)
  port_range : string option; [@option]  (** port_range *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** digitalocean_firewall__outbound_rule *)

type digitalocean_firewall__pending_changes = {
  droplet_id : float;  (** droplet_id *)
  removing : bool;  (** removing *)
  status : string;  (** status *)
}
[@@deriving yojson_of]

type digitalocean_firewall = {
  droplet_ids : float list option; [@option]  (** droplet_ids *)
  name : string;  (** name *)
  tags : string list option; [@option]  (** tags *)
  inbound_rule : digitalocean_firewall__inbound_rule list;
  outbound_rule : digitalocean_firewall__outbound_rule list;
}
[@@deriving yojson_of]
(** digitalocean_firewall *)

let digitalocean_firewall ?droplet_ids ?tags ~name ~inbound_rule
    ~outbound_rule __resource_id =
  let __resource_type = "digitalocean_firewall" in
  let __resource =
    { droplet_ids; name; tags; inbound_rule; outbound_rule }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_firewall __resource);
  ()
