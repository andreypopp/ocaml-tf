(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_gre_tunnel = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  cloudflare_gre_endpoint : string prop;
      (** The IP address assigned to the Cloudflare side of the GRE tunnel. *)
  customer_gre_endpoint : string prop;
      (** The IP address assigned to the customer side of the GRE tunnel. *)
  description : string prop option; [@option]
      (** Description of the GRE tunnel intent. *)
  health_check_enabled : bool prop option; [@option]
      (** Specifies if ICMP tunnel health checks are enabled. *)
  health_check_target : string prop option; [@option]
      (** The IP address of the customer endpoint that will receive tunnel health checks. *)
  health_check_type : string prop option; [@option]
      (** Specifies the ICMP echo type for the health check. Available values: `request`, `reply`. *)
  id : string prop option; [@option]  (** id *)
  interface_address : string prop;
      (** 31-bit prefix (/31 in CIDR notation) supporting 2 hosts, one for each side of the tunnel. *)
  mtu : float prop option; [@option]
      (** Maximum Transmission Unit (MTU) in bytes for the GRE tunnel. *)
  name : string prop;  (** Name of the GRE tunnel. *)
  ttl : float prop option; [@option]
      (** Time To Live (TTL) in number of hops of the GRE tunnel. *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages GRE tunnels for Magic Transit. *)

type t = {
  account_id : string prop;
  cloudflare_gre_endpoint : string prop;
  customer_gre_endpoint : string prop;
  description : string prop;
  health_check_enabled : bool prop;
  health_check_target : string prop;
  health_check_type : string prop;
  id : string prop;
  interface_address : string prop;
  mtu : float prop;
  name : string prop;
  ttl : float prop;
}

let cloudflare_gre_tunnel ?account_id ?description
    ?health_check_enabled ?health_check_target ?health_check_type ?id
    ?mtu ?ttl ~cloudflare_gre_endpoint ~customer_gre_endpoint
    ~interface_address ~name __resource_id =
  let __resource_type = "cloudflare_gre_tunnel" in
  let __resource =
    ({
       account_id;
       cloudflare_gre_endpoint;
       customer_gre_endpoint;
       description;
       health_check_enabled;
       health_check_target;
       health_check_type;
       id;
       interface_address;
       mtu;
       name;
       ttl;
     }
      : cloudflare_gre_tunnel)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_gre_tunnel __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       cloudflare_gre_endpoint =
         Prop.computed __resource_type __resource_id
           "cloudflare_gre_endpoint";
       customer_gre_endpoint =
         Prop.computed __resource_type __resource_id
           "customer_gre_endpoint";
       description =
         Prop.computed __resource_type __resource_id "description";
       health_check_enabled =
         Prop.computed __resource_type __resource_id
           "health_check_enabled";
       health_check_target =
         Prop.computed __resource_type __resource_id
           "health_check_target";
       health_check_type =
         Prop.computed __resource_type __resource_id
           "health_check_type";
       id = Prop.computed __resource_type __resource_id "id";
       interface_address =
         Prop.computed __resource_type __resource_id
           "interface_address";
       mtu = Prop.computed __resource_type __resource_id "mtu";
       name = Prop.computed __resource_type __resource_id "name";
       ttl = Prop.computed __resource_type __resource_id "ttl";
     }
      : t)
  in
  __resource_attributes
