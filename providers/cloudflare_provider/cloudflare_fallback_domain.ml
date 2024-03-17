(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_fallback_domain__domains = {
  description : string option; [@option]
      (** A description of the fallback domain, displayed in the client UI. *)
  dns_server : string list option; [@option]
      (** A list of IP addresses to handle domain resolution. *)
  suffix : string option; [@option]
      (** The domain suffix to match when resolving locally. *)
}
[@@deriving yojson_of]
(** cloudflare_fallback_domain__domains *)

type cloudflare_fallback_domain = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  id : string option; [@option]  (** id *)
  policy_id : string option; [@option]
      (** The settings policy for which to configure this fallback domain policy. *)
  domains : cloudflare_fallback_domain__domains list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Fallback Domain resource. Fallback domains are
used to ignore DNS requests to a given list of domains. These DNS
requests will be passed back to other DNS servers configured on
existing network interfaces on the device.
 *)

let cloudflare_fallback_domain ?id ?policy_id ~account_id ~domains
    __resource_id =
  let __resource_type = "cloudflare_fallback_domain" in
  let __resource = { account_id; id; policy_id; domains } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_fallback_domain __resource);
  ()
