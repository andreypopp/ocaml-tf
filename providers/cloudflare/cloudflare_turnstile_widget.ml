(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ~account_id ~domains ~mode ~name () : cloudflare_turnstile_widget
    =
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

type t = {
  account_id : string prop;
  bot_fight_mode : bool prop;
  domains : string list prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  offlabel : bool prop;
  region : string prop;
  secret : string prop;
}

let make ?bot_fight_mode ?id ?offlabel ?region ~account_id ~domains
    ~mode ~name __id =
  let __type = "cloudflare_turnstile_widget" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       bot_fight_mode = Prop.computed __type __id "bot_fight_mode";
       domains = Prop.computed __type __id "domains";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       offlabel = Prop.computed __type __id "offlabel";
       region = Prop.computed __type __id "region";
       secret = Prop.computed __type __id "secret";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_turnstile_widget
        (cloudflare_turnstile_widget ?bot_fight_mode ?id ?offlabel
           ?region ~account_id ~domains ~mode ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?bot_fight_mode ?id ?offlabel ?region
    ~account_id ~domains ~mode ~name __id =
  let (r : _ Tf_core.resource) =
    make ?bot_fight_mode ?id ?offlabel ?region ~account_id ~domains
      ~mode ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
