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
    ~zone_id () : cloudflare_web3_hostname =
  { description; dnslink; id; name; target; zone_id }

type t = {
  created_on : string prop;
  description : string prop;
  dnslink : string prop;
  id : string prop;
  modified_on : string prop;
  name : string prop;
  status : string prop;
  target : string prop;
  zone_id : string prop;
}

let register ?tf_module ?description ?dnslink ?id ~name ~target
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_web3_hostname" in
  let __resource =
    cloudflare_web3_hostname ?description ?dnslink ?id ~name ~target
      ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_web3_hostname __resource);
  let __resource_attributes =
    ({
       created_on =
         Prop.computed __resource_type __resource_id "created_on";
       description =
         Prop.computed __resource_type __resource_id "description";
       dnslink =
         Prop.computed __resource_type __resource_id "dnslink";
       id = Prop.computed __resource_type __resource_id "id";
       modified_on =
         Prop.computed __resource_type __resource_id "modified_on";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       target = Prop.computed __resource_type __resource_id "target";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
