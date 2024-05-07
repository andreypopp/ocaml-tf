(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type inbound_rule = {
  port_range : string prop option; [@option]
  protocol : string prop;
  source_addresses : string prop list option; [@option]
  source_droplet_ids : float prop list option; [@option]
  source_kubernetes_ids : string prop list option; [@option]
  source_load_balancer_uids : string prop list option; [@option]
  source_tags : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inbound_rule) -> ()

let yojson_of_inbound_rule =
  (function
   | {
       port_range = v_port_range;
       protocol = v_protocol;
       source_addresses = v_source_addresses;
       source_droplet_ids = v_source_droplet_ids;
       source_kubernetes_ids = v_source_kubernetes_ids;
       source_load_balancer_uids = v_source_load_balancer_uids;
       source_tags = v_source_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_load_balancer_uids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_load_balancer_uids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_kubernetes_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_kubernetes_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_droplet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "source_droplet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_port_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_range", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inbound_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inbound_rule

[@@@deriving.end]

type outbound_rule = {
  destination_addresses : string prop list option; [@option]
  destination_droplet_ids : float prop list option; [@option]
  destination_kubernetes_ids : string prop list option; [@option]
  destination_load_balancer_uids : string prop list option; [@option]
  destination_tags : string prop list option; [@option]
  port_range : string prop option; [@option]
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outbound_rule) -> ()

let yojson_of_outbound_rule =
  (function
   | {
       destination_addresses = v_destination_addresses;
       destination_droplet_ids = v_destination_droplet_ids;
       destination_kubernetes_ids = v_destination_kubernetes_ids;
       destination_load_balancer_uids =
         v_destination_load_balancer_uids;
       destination_tags = v_destination_tags;
       port_range = v_port_range;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_port_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_load_balancer_uids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_load_balancer_uids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_kubernetes_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_kubernetes_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_droplet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "destination_droplet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_addresses", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : outbound_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outbound_rule

[@@@deriving.end]

type pending_changes = {
  droplet_id : float prop;
  removing : bool prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pending_changes) -> ()

let yojson_of_pending_changes =
  (function
   | {
       droplet_id = v_droplet_id;
       removing = v_removing;
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
         let arg = yojson_of_prop yojson_of_bool v_removing in
         ("removing", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_droplet_id in
         ("droplet_id", arg) :: bnds
       in
       `Assoc bnds
    : pending_changes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pending_changes

[@@@deriving.end]

type digitalocean_firewall = {
  droplet_ids : float prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : string prop list option; [@option]
  inbound_rule : inbound_rule list;
  outbound_rule : outbound_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_firewall) -> ()

let yojson_of_digitalocean_firewall =
  (function
   | {
       droplet_ids = v_droplet_ids;
       id = v_id;
       name = v_name;
       tags = v_tags;
       inbound_rule = v_inbound_rule;
       outbound_rule = v_outbound_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_outbound_rule v_outbound_rule
         in
         ("outbound_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inbound_rule v_inbound_rule
         in
         ("inbound_rule", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
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
         match v_droplet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "droplet_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_firewall -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_firewall

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
