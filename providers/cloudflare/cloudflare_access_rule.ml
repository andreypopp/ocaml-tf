(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = {
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
  configuration : configuration list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare IP Firewall Access Rule resource. Access
control can be applied on basis of IP addresses, IP ranges, AS
numbers or countries.
 *)

let configuration ~target ~value () : configuration =
  { target; value }

let cloudflare_access_rule ?account_id ?id ?notes ?zone_id ~mode
    ~configuration () : cloudflare_access_rule =
  { account_id; id; mode; notes; zone_id; configuration }

type t = {
  account_id : string prop;
  id : string prop;
  mode : string prop;
  notes : string prop;
  zone_id : string prop;
}

let make ?account_id ?id ?notes ?zone_id ~mode ~configuration __id =
  let __type = "cloudflare_access_rule" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       notes = Prop.computed __type __id "notes";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_rule
        (cloudflare_access_rule ?account_id ?id ?notes ?zone_id ~mode
           ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?notes ?zone_id ~mode
    ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?notes ?zone_id ~mode ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
