(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_web_analytics_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** cloudflare_web_analytics_rule__timeouts *)

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
  timeouts : cloudflare_web_analytics_rule__timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Web Analytics Rule resource. *)

type t = {
  account_id : string prop;
  host : string prop;
  id : string prop;
  inclusive : bool prop;
  is_paused : bool prop;
  paths : string list prop;
  ruleset_id : string prop;
}

let cloudflare_web_analytics_rule ?id ?timeouts ~account_id ~host
    ~inclusive ~is_paused ~paths ~ruleset_id __resource_id =
  let __resource_type = "cloudflare_web_analytics_rule" in
  let __resource =
    ({
       account_id;
       host;
       id;
       inclusive;
       is_paused;
       paths;
       ruleset_id;
       timeouts;
     }
      : cloudflare_web_analytics_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_web_analytics_rule __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       inclusive =
         Prop.computed __resource_type __resource_id "inclusive";
       is_paused =
         Prop.computed __resource_type __resource_id "is_paused";
       paths = Prop.computed __resource_type __resource_id "paths";
       ruleset_id =
         Prop.computed __resource_type __resource_id "ruleset_id";
     }
      : t)
  in
  __resource_attributes
