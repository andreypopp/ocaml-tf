(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_bot_management = {
  auto_update_model : bool option; [@option]
      (** Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes). *)
  enable_js : bool option; [@option]
      (** Use lightweight, invisible JavaScript detections to improve Bot Management. [Learn more about JavaScript Detections](https://developers.cloudflare.com/bots/reference/javascript-detections/). *)
  fight_mode : bool option; [@option]
      (** Whether to enable Bot Fight Mode. *)
  optimize_wordpress : bool option; [@option]
      (** Whether to optimize Super Bot Fight Mode protections for Wordpress. *)
  sbfm_definitely_automated : string option; [@option]
      (** Super Bot Fight Mode (SBFM) action to take on definitely automated requests. *)
  sbfm_likely_automated : string option; [@option]
      (** Super Bot Fight Mode (SBFM) action to take on likely automated requests. *)
  sbfm_static_resource_protection : bool option; [@option]
      (** Super Bot Fight Mode (SBFM) to enable static resource protection. Enable if static resources on your application need bot protection. Note: Static resource protection can also result in legitimate traffic being blocked. *)
  sbfm_verified_bots : string option; [@option]
      (** Super Bot Fight Mode (SBFM) action to take on verified bots requests. *)
  suppress_session_score : bool option; [@option]
      (** Whether to disable tracking the highest bot score for a session in the Bot Management cookie. *)
  zone_id : string;
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
    ?fight_mode ?optimize_wordpress ?sbfm_definitely_automated
    ?sbfm_likely_automated ?sbfm_static_resource_protection
    ?sbfm_verified_bots ?suppress_session_score ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_bot_management" in
  let __resource =
    {
      auto_update_model;
      enable_js;
      fight_mode;
      optimize_wordpress;
      sbfm_definitely_automated;
      sbfm_likely_automated;
      sbfm_static_resource_protection;
      sbfm_verified_bots;
      suppress_session_score;
      zone_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_bot_management __resource);
  ()
