(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?dnslink ?id ~name ~target ~zone_id __id =
  let __type = "cloudflare_web3_hostname" in
  let __attrs =
    ({
       created_on = Prop.computed __type __id "created_on";
       description = Prop.computed __type __id "description";
       dnslink = Prop.computed __type __id "dnslink";
       id = Prop.computed __type __id "id";
       modified_on = Prop.computed __type __id "modified_on";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       target = Prop.computed __type __id "target";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_web3_hostname
        (cloudflare_web3_hostname ?description ?dnslink ?id ~name
           ~target ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?dnslink ?id ~name ~target
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?dnslink ?id ~name ~target ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
