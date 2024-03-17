(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_gre_tunnel = {
  account_id : string option; [@option]
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  cloudflare_gre_endpoint : string;
      (** The IP address assigned to the Cloudflare side of the GRE tunnel. *)
  customer_gre_endpoint : string;
      (** The IP address assigned to the customer side of the GRE tunnel. *)
  description : string option; [@option]
      (** Description of the GRE tunnel intent. *)
  health_check_enabled : bool option; [@option]
      (** Specifies if ICMP tunnel health checks are enabled. *)
  health_check_target : string option; [@option]
      (** The IP address of the customer endpoint that will receive tunnel health checks. *)
  health_check_type : string option; [@option]
      (** Specifies the ICMP echo type for the health check. Available values: `request`, `reply`. *)
  id : string option; [@option]  (** id *)
  interface_address : string;
      (** 31-bit prefix (/31 in CIDR notation) supporting 2 hosts, one for each side of the tunnel. *)
  mtu : float option; [@option]
      (** Maximum Transmission Unit (MTU) in bytes for the GRE tunnel. *)
  name : string;  (** Name of the GRE tunnel. *)
  ttl : float option; [@option]
      (** Time To Live (TTL) in number of hops of the GRE tunnel. *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages GRE tunnels for Magic Transit. *)

let cloudflare_gre_tunnel ?account_id ?description
    ?health_check_enabled ?health_check_target ?health_check_type ?id
    ?mtu ?ttl ~cloudflare_gre_endpoint ~customer_gre_endpoint
    ~interface_address ~name __resource_id =
  let __resource_type = "cloudflare_gre_tunnel" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_gre_tunnel __resource);
  ()
