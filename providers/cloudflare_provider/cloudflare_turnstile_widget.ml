(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_turnstile_widget = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  domains : string list;  (** Domains where the widget is deployed *)
  mode : string;
      (** Widget Mode. Available values: `non-interactive`, `invisible`, `managed` *)
  name : string;  (** Human readable widget name. *)
}
[@@deriving yojson_of]
(** The [Turnstile Widget](https://developers.cloudflare.com/turnstile/) resource allows you to manage Cloudflare Turnstile Widgets.
 *)

let cloudflare_turnstile_widget ~account_id ~domains ~mode ~name
    __resource_id =
  let __resource_type = "cloudflare_turnstile_widget" in
  let __resource = { account_id; domains; mode; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_turnstile_widget __resource);
  ()
