(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_firewall__inbound_rule = {
  port_range : string prop option; [@option]  (** port_range *)
  protocol : string prop;  (** protocol *)
  source_addresses : string prop list option; [@option]
      (** source_addresses *)
  source_droplet_ids : float prop list option; [@option]
      (** source_droplet_ids *)
  source_kubernetes_ids : string prop list option; [@option]
      (** source_kubernetes_ids *)
  source_load_balancer_uids : string prop list option; [@option]
      (** source_load_balancer_uids *)
  source_tags : string prop list option; [@option]  (** source_tags *)
}
[@@deriving yojson_of]
(** digitalocean_firewall__inbound_rule *)

type digitalocean_firewall__outbound_rule = {
  destination_addresses : string prop list option; [@option]
      (** destination_addresses *)
  destination_droplet_ids : float prop list option; [@option]
      (** destination_droplet_ids *)
  destination_kubernetes_ids : string prop list option; [@option]
      (** destination_kubernetes_ids *)
  destination_load_balancer_uids : string prop list option; [@option]
      (** destination_load_balancer_uids *)
  destination_tags : string prop list option; [@option]
      (** destination_tags *)
  port_range : string prop option; [@option]  (** port_range *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** digitalocean_firewall__outbound_rule *)

type digitalocean_firewall__pending_changes = {
  droplet_id : float prop;  (** droplet_id *)
  removing : bool prop;  (** removing *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type digitalocean_firewall = {
  droplet_ids : float prop list option; [@option]  (** droplet_ids *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : string prop list option; [@option]  (** tags *)
  inbound_rule : digitalocean_firewall__inbound_rule list;
  outbound_rule : digitalocean_firewall__outbound_rule list;
}
[@@deriving yojson_of]
(** digitalocean_firewall *)

type t = {
  created_at : string prop;
  droplet_ids : float list prop;
  id : string prop;
  name : string prop;
  pending_changes : digitalocean_firewall__pending_changes list prop;
  status : string prop;
  tags : string list prop;
}

let digitalocean_firewall ?droplet_ids ?id ?tags ~name ~inbound_rule
    ~outbound_rule __resource_id =
  let __resource_type = "digitalocean_firewall" in
  let __resource =
    ({ droplet_ids; id; name; tags; inbound_rule; outbound_rule }
      : digitalocean_firewall)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_firewall __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       droplet_ids =
         Prop.computed __resource_type __resource_id "droplet_ids";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       pending_changes =
         Prop.computed __resource_type __resource_id
           "pending_changes";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
