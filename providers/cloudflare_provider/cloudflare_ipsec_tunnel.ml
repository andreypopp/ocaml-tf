(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_ipsec_tunnel = {
  account_id : string option; [@option]
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  allow_null_cipher : bool option; [@option]
      (** Specifies if this tunnel may use a null cipher (ENCR_NULL) in Phase 2. Defaults to `false`. *)
  cloudflare_endpoint : string;
      (** IP address assigned to the Cloudflare side of the IPsec tunnel. *)
  customer_endpoint : string;
      (** IP address assigned to the customer side of the IPsec tunnel. *)
  description : string option; [@option]
      (** An optional description of the IPsec tunnel. *)
  interface_address : string;
      (** 31-bit prefix (/31 in CIDR notation) supporting 2 hosts, one for each side of the tunnel. *)
  name : string;  (** Name of the IPsec tunnel. *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages IPsec tunnels for Magic Transit.
 *)

let cloudflare_ipsec_tunnel ?account_id ?allow_null_cipher
    ?description ~cloudflare_endpoint ~customer_endpoint
    ~interface_address ~name __resource_id =
  let __resource_type = "cloudflare_ipsec_tunnel" in
  let __resource =
    {
      account_id;
      allow_null_cipher;
      cloudflare_endpoint;
      customer_endpoint;
      description;
      interface_address;
      name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_ipsec_tunnel __resource);
  ()
