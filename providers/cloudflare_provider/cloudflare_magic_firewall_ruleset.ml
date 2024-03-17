(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_magic_firewall_ruleset = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;
      (** **Modifying this attribute will force creation of a new resource.** *)
  rules : (string * string) list list option; [@option]  (** rules *)
}
[@@deriving yojson_of]
(** cloudflare_magic_firewall_ruleset *)

let cloudflare_magic_firewall_ruleset ?description ?id ?rules
    ~account_id ~name __resource_id =
  let __resource_type = "cloudflare_magic_firewall_ruleset" in
  let __resource = { account_id; description; id; name; rules } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_magic_firewall_ruleset __resource);
  ()
