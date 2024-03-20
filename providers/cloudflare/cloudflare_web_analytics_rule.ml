(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type cloudflare_web_analytics_rule = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  host : string prop;  (** The host to apply the rule to. *)
  id : string prop option; [@option]  (** id *)
  inclusive : bool prop;
      (** Whether the rule includes or excludes the matched traffic from being measured in Web Analytics. *)
  is_paused : bool prop;  (** Whether the rule is paused or not. *)
  paths : string prop list;
      (** A list of paths to apply the rule to. *)
  ruleset_id : string prop;
      (** The Web Analytics ruleset id. **Modifying this attribute will force creation of a new resource.** *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Web Analytics Rule resource. *)

let timeouts ?create () : timeouts = { create }

let cloudflare_web_analytics_rule ?id ?timeouts ~account_id ~host
    ~inclusive ~is_paused ~paths ~ruleset_id () :
    cloudflare_web_analytics_rule =
  {
    account_id;
    host;
    id;
    inclusive;
    is_paused;
    paths;
    ruleset_id;
    timeouts;
  }

type t = {
  account_id : string prop;
  host : string prop;
  id : string prop;
  inclusive : bool prop;
  is_paused : bool prop;
  paths : string list prop;
  ruleset_id : string prop;
}

let make ?id ?timeouts ~account_id ~host ~inclusive ~is_paused ~paths
    ~ruleset_id __id =
  let __type = "cloudflare_web_analytics_rule" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       inclusive = Prop.computed __type __id "inclusive";
       is_paused = Prop.computed __type __id "is_paused";
       paths = Prop.computed __type __id "paths";
       ruleset_id = Prop.computed __type __id "ruleset_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_web_analytics_rule
        (cloudflare_web_analytics_rule ?id ?timeouts ~account_id
           ~host ~inclusive ~is_paused ~paths ~ruleset_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_id ~host ~inclusive
    ~is_paused ~paths ~ruleset_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_id ~host ~inclusive ~is_paused ~paths
      ~ruleset_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
