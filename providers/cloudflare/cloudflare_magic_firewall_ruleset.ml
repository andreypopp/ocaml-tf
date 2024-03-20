(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?rules ~account_id ~name __id =
  let __type = "cloudflare_magic_firewall_ruleset" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rules = Prop.computed __type __id "rules";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_magic_firewall_ruleset
        (cloudflare_magic_firewall_ruleset ?description ?id ?rules
           ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?rules ~account_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?rules ~account_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
