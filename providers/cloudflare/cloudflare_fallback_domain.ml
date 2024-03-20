(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type domains = {
  description : string prop option; [@option]
      (** A description of the fallback domain, displayed in the client UI. *)
  dns_server : string prop list option; [@option]
      (** A list of IP addresses to handle domain resolution. *)
  suffix : string prop option; [@option]
      (** The domain suffix to match when resolving locally. *)
}
[@@deriving yojson_of]
(** domains *)

type cloudflare_fallback_domain = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  policy_id : string prop option; [@option]
      (** The settings policy for which to configure this fallback domain policy. *)
  domains : domains list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Fallback Domain resource. Fallback domains are
used to ignore DNS requests to a given list of domains. These DNS
requests will be passed back to other DNS servers configured on
existing network interfaces on the device.
 *)

let domains ?description ?dns_server ?suffix () : domains =
  { description; dns_server; suffix }

let cloudflare_fallback_domain ?id ?policy_id ~account_id ~domains ()
    : cloudflare_fallback_domain =
  { account_id; id; policy_id; domains }

type t = {
  account_id : string prop;
  id : string prop;
  policy_id : string prop;
}

let make ?id ?policy_id ~account_id ~domains __id =
  let __type = "cloudflare_fallback_domain" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       policy_id = Prop.computed __type __id "policy_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_fallback_domain
        (cloudflare_fallback_domain ?id ?policy_id ~account_id
           ~domains ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_id ~account_id ~domains __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_id ~account_id ~domains __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
