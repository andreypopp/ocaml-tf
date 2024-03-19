(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?policy_id ~account_id ~domains
    __resource_id =
  let __resource_type = "cloudflare_fallback_domain" in
  let __resource =
    cloudflare_fallback_domain ?id ?policy_id ~account_id ~domains ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_fallback_domain __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       policy_id =
         Prop.computed __resource_type __resource_id "policy_id";
     }
      : t)
  in
  __resource_attributes
