(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type inbound_rule = {
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
(** inbound_rule *)

type outbound_rule = {
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
(** outbound_rule *)

type pending_changes = {
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
  inbound_rule : inbound_rule list;
  outbound_rule : outbound_rule list;
}
[@@deriving yojson_of]
(** digitalocean_firewall *)

let inbound_rule ?port_range ?source_addresses ?source_droplet_ids
    ?source_kubernetes_ids ?source_load_balancer_uids ?source_tags
    ~protocol () : inbound_rule =
  {
    port_range;
    protocol;
    source_addresses;
    source_droplet_ids;
    source_kubernetes_ids;
    source_load_balancer_uids;
    source_tags;
  }

let outbound_rule ?destination_addresses ?destination_droplet_ids
    ?destination_kubernetes_ids ?destination_load_balancer_uids
    ?destination_tags ?port_range ~protocol () : outbound_rule =
  {
    destination_addresses;
    destination_droplet_ids;
    destination_kubernetes_ids;
    destination_load_balancer_uids;
    destination_tags;
    port_range;
    protocol;
  }

let digitalocean_firewall ?droplet_ids ?id ?tags ~name ~inbound_rule
    ~outbound_rule () : digitalocean_firewall =
  { droplet_ids; id; name; tags; inbound_rule; outbound_rule }

type t = {
  created_at : string prop;
  droplet_ids : float list prop;
  id : string prop;
  name : string prop;
  pending_changes : pending_changes list prop;
  status : string prop;
  tags : string list prop;
}

let make ?droplet_ids ?id ?tags ~name ~inbound_rule ~outbound_rule
    __id =
  let __type = "digitalocean_firewall" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       droplet_ids = Prop.computed __type __id "droplet_ids";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       pending_changes = Prop.computed __type __id "pending_changes";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_firewall
        (digitalocean_firewall ?droplet_ids ?id ?tags ~name
           ~inbound_rule ~outbound_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?droplet_ids ?id ?tags ~name ~inbound_rule
    ~outbound_rule __id =
  let (r : _ Tf_core.resource) =
    make ?droplet_ids ?id ?tags ~name ~inbound_rule ~outbound_rule
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
