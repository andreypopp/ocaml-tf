(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_web3_hostname = {
  description : string prop option; [@option]
      (** An optional description of the hostname. *)
  dnslink : string prop option; [@option]
      (** DNSLink value used if the target is ipfs. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The hostname that will point to the target gateway via CNAME. *)
  target : string prop;  (** Target gateway of the hostname. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Manages Web3 hostnames for IPFS and Ethereum gateways.
 *)

let cloudflare_web3_hostname ?description ?dnslink ?id ~name ~target
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_web3_hostname" in
  let __resource =
    { description; dnslink; id; name; target; zone_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_web3_hostname __resource);
  ()
