(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_rule__configuration = {
  target : string prop;
      (** The request property to target. Available values: `ip`, `ip6`, `ip_range`, `asn`, `country`. **Modifying this attribute will force creation of a new resource.** *)
  value : string prop;
      (** The value to target. Depends on target's type. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Rule configuration to apply to a matched request. **Modifying this attribute will force creation of a new resource.** *)

type cloudflare_access_rule = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  mode : string prop;
      (** The action to apply to a matched request. Available values: `block`, `challenge`, `whitelist`, `js_challenge`, `managed_challenge`. *)
  notes : string prop option; [@option]
      (** A personal note about the rule. Typically used as a reminder or explanation for the rule. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. **Modifying this attribute will force creation of a new resource.** *)
  configuration : cloudflare_access_rule__configuration list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare IP Firewall Access Rule resource. Access
control can be applied on basis of IP addresses, IP ranges, AS
numbers or countries.
 *)

type t = {
  account_id : string prop;
  id : string prop;
  mode : string prop;
  notes : string prop;
  zone_id : string prop;
}

let cloudflare_access_rule ?account_id ?id ?notes ?zone_id ~mode
    ~configuration __resource_id =
  let __resource_type = "cloudflare_access_rule" in
  let __resource =
    ({ account_id; id; mode; notes; zone_id; configuration }
      : cloudflare_access_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_rule __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       mode = Prop.computed __resource_type __resource_id "mode";
       notes = Prop.computed __resource_type __resource_id "notes";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
