(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_access_rule__configuration = {
  target : string;
      (** The request property to target. Available values: `ip`, `ip6`, `ip_range`, `asn`, `country`. **Modifying this attribute will force creation of a new resource.** *)
  value : string;
      (** The value to target. Depends on target's type. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Rule configuration to apply to a matched request. **Modifying this attribute will force creation of a new resource.** *)

type cloudflare_access_rule = {
  mode : string;
      (** The action to apply to a matched request. Available values: `block`, `challenge`, `whitelist`, `js_challenge`, `managed_challenge`. *)
  notes : string option; [@option]
      (** A personal note about the rule. Typically used as a reminder or explanation for the rule. *)
  configuration : cloudflare_access_rule__configuration list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare IP Firewall Access Rule resource. Access
control can be applied on basis of IP addresses, IP ranges, AS
numbers or countries.
 *)

let cloudflare_access_rule ?notes ~mode ~configuration __resource_id
    =
  let __resource_type = "cloudflare_access_rule" in
  let __resource = { mode; notes; configuration } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_rule __resource);
  ()
