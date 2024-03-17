(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_turnstile_widget = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  bot_fight_mode : bool prop option; [@option]
      (** If bot_fight_mode is set to true, Cloudflare issues computationally expensive challenges in response to malicious bots (Enterprise only). *)
  domains : string prop list;
      (** Domains where the widget is deployed *)
  id : string prop option; [@option]
      (** The identifier of this resource. This is the site key value. *)
  mode : string prop;
      (** Widget Mode. Available values: `non-interactive`, `invisible`, `managed` *)
  name : string prop;  (** Human readable widget name. *)
  offlabel : bool prop option; [@option]
      (** Do not show any Cloudflare branding on the widget (Enterprise only). *)
  region : string prop option; [@option]
      (** Region where this widget can be used. *)
}
[@@deriving yojson_of]
(** The [Turnstile Widget](https://developers.cloudflare.com/turnstile/) resource allows you to manage Cloudflare Turnstile Widgets.
 *)

let cloudflare_turnstile_widget ?bot_fight_mode ?id ?offlabel ?region
    ~account_id ~domains ~mode ~name __resource_id =
  let __resource_type = "cloudflare_turnstile_widget" in
  let __resource =
    {
      account_id;
      bot_fight_mode;
      domains;
      id;
      mode;
      name;
      offlabel;
      region;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_turnstile_widget __resource);
  ()
