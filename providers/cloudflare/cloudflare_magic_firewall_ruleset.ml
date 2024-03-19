(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_magic_firewall_ruleset = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** **Modifying this attribute will force creation of a new resource.** *)
  rules : (string * string prop) list list option; [@option]
      (** rules *)
}
[@@deriving yojson_of]
(** cloudflare_magic_firewall_ruleset *)

let cloudflare_magic_firewall_ruleset ?description ?id ?rules
    ~account_id ~name () : cloudflare_magic_firewall_ruleset =
  { account_id; description; id; name; rules }

type t = {
  account_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rules : (string * string) list list prop;
}

let register ?tf_module ?description ?id ?rules ~account_id ~name
    __resource_id =
  let __resource_type = "cloudflare_magic_firewall_ruleset" in
  let __resource =
    cloudflare_magic_firewall_ruleset ?description ?id ?rules
      ~account_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_magic_firewall_ruleset __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rules = Prop.computed __resource_type __resource_id "rules";
     }
      : t)
  in
  __resource_attributes
