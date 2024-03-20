(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_bot_management = {
  auto_update_model : bool prop option; [@option]
      (** Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes). *)
  enable_js : bool prop option; [@option]
      (** Use lightweight, invisible JavaScript detections to improve Bot Management. [Learn more about JavaScript Detections](https://developers.cloudflare.com/bots/reference/javascript-detections/). *)
  fight_mode : bool prop option; [@option]
      (** Whether to enable Bot Fight Mode. *)
  id : string prop option; [@option]  (** id *)
  optimize_wordpress : bool prop option; [@option]
      (** Whether to optimize Super Bot Fight Mode protections for Wordpress. *)
  sbfm_definitely_automated : string prop option; [@option]
      (** Super Bot Fight Mode (SBFM) action to take on definitely automated requests. *)
  sbfm_likely_automated : string prop option; [@option]
      (** Super Bot Fight Mode (SBFM) action to take on likely automated requests. *)
  sbfm_static_resource_protection : bool prop option; [@option]
      (** Super Bot Fight Mode (SBFM) to enable static resource protection. Enable if static resources on your application need bot protection. Note: Static resource protection can also result in legitimate traffic being blocked. *)
  sbfm_verified_bots : string prop option; [@option]
      (** Super Bot Fight Mode (SBFM) action to take on verified bots requests. *)
  suppress_session_score : bool prop option; [@option]
      (** Whether to disable tracking the highest bot score for a session in the Bot Management cookie. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to configure Bot Management.

Specifically, this resource can be used to manage:

- **Bot Fight Mode**
- **Super Bot Fight Mode**
- **Bot Management for Enterprise**
 *)

let cloudflare_bot_management ?auto_update_model ?enable_js
    ?fight_mode ?id ?optimize_wordpress ?sbfm_definitely_automated
    ?sbfm_likely_automated ?sbfm_static_resource_protection
    ?sbfm_verified_bots ?suppress_session_score ~zone_id () :
    cloudflare_bot_management =
  {
    auto_update_model;
    enable_js;
    fight_mode;
    id;
    optimize_wordpress;
    sbfm_definitely_automated;
    sbfm_likely_automated;
    sbfm_static_resource_protection;
    sbfm_verified_bots;
    suppress_session_score;
    zone_id;
  }

type t = {
  auto_update_model : bool prop;
  enable_js : bool prop;
  fight_mode : bool prop;
  id : string prop;
  optimize_wordpress : bool prop;
  sbfm_definitely_automated : string prop;
  sbfm_likely_automated : string prop;
  sbfm_static_resource_protection : bool prop;
  sbfm_verified_bots : string prop;
  suppress_session_score : bool prop;
  using_latest_model : bool prop;
  zone_id : string prop;
}

let make ?auto_update_model ?enable_js ?fight_mode ?id
    ?optimize_wordpress ?sbfm_definitely_automated
    ?sbfm_likely_automated ?sbfm_static_resource_protection
    ?sbfm_verified_bots ?suppress_session_score ~zone_id __id =
  let __type = "cloudflare_bot_management" in
  let __attrs =
    ({
       auto_update_model =
         Prop.computed __type __id "auto_update_model";
       enable_js = Prop.computed __type __id "enable_js";
       fight_mode = Prop.computed __type __id "fight_mode";
       id = Prop.computed __type __id "id";
       optimize_wordpress =
         Prop.computed __type __id "optimize_wordpress";
       sbfm_definitely_automated =
         Prop.computed __type __id "sbfm_definitely_automated";
       sbfm_likely_automated =
         Prop.computed __type __id "sbfm_likely_automated";
       sbfm_static_resource_protection =
         Prop.computed __type __id "sbfm_static_resource_protection";
       sbfm_verified_bots =
         Prop.computed __type __id "sbfm_verified_bots";
       suppress_session_score =
         Prop.computed __type __id "suppress_session_score";
       using_latest_model =
         Prop.computed __type __id "using_latest_model";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_bot_management
        (cloudflare_bot_management ?auto_update_model ?enable_js
           ?fight_mode ?id ?optimize_wordpress
           ?sbfm_definitely_automated ?sbfm_likely_automated
           ?sbfm_static_resource_protection ?sbfm_verified_bots
           ?suppress_session_score ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_update_model ?enable_js ?fight_mode ?id
    ?optimize_wordpress ?sbfm_definitely_automated
    ?sbfm_likely_automated ?sbfm_static_resource_protection
    ?sbfm_verified_bots ?suppress_session_score ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_update_model ?enable_js ?fight_mode ?id
      ?optimize_wordpress ?sbfm_definitely_automated
      ?sbfm_likely_automated ?sbfm_static_resource_protection
      ?sbfm_verified_bots ?suppress_session_score ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
