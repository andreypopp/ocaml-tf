(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_access_organization__custom_pages = {
  forbidden : string option; [@option]
      (** The id of the forbidden page. *)
  identity_denied : string option; [@option]
      (** The id of the identity denied page. *)
}
[@@deriving yojson_of]
(** Custom pages for your Zero Trust organization. *)

type cloudflare_access_organization__login_design = {
  background_color : string option; [@option]
      (** The background color on the login page. *)
  footer_text : string option; [@option]
      (** The text at the bottom of the login page. *)
  header_text : string option; [@option]
      (** The text at the top of the login page. *)
  logo_path : string option; [@option]
      (** The URL of the logo on the login page. *)
  text_color : string option; [@option]
      (** The text color on the login page. *)
}
[@@deriving yojson_of]
(** cloudflare_access_organization__login_design *)

type cloudflare_access_organization = {
  allow_authenticate_via_warp : bool option; [@option]
      (** When set to true, users can authenticate via WARP for any application in your organization. Application settings will take precedence over this value. *)
  auth_domain : string;
      (** The unique subdomain assigned to your Zero Trust organization. *)
  auto_redirect_to_identity : bool option; [@option]
      (** When set to true, users skip the identity provider selection step during login. *)
  is_ui_read_only : bool option; [@option]
      (** When set to true, this will disable all editing of Access resources via the Zero Trust Dashboard. *)
  name : string option; [@option]
      (** The name of your Zero Trust organization. *)
  session_duration : string option; [@option]
      (** How often a user will be forced to re-authorise. Must be in the format `48h` or `2h45m`. *)
  ui_read_only_toggle_reason : string option; [@option]
      (** A description of the reason why the UI read only field is being toggled. *)
  user_seat_expiration_inactive_time : string option; [@option]
      (** The amount of time a user seat is inactive before it expires. When the user seat exceeds the set time of inactivity, the user is removed as an active seat and no longer counts against your Teams seat count. Must be in the format `300ms` or `2h45m`. *)
  warp_auth_session_duration : string option; [@option]
      (** The amount of time that tokens issued for applications will be valid. Must be in the format 30m or 2h45m. Valid time units are: m, h. *)
  custom_pages : cloudflare_access_organization__custom_pages list;
  login_design : cloudflare_access_organization__login_design list;
}
[@@deriving yojson_of]
(** A Zero Trust organization defines the user login experience.
 *)

let cloudflare_access_organization ?allow_authenticate_via_warp
    ?auto_redirect_to_identity ?is_ui_read_only ?name
    ?session_duration ?ui_read_only_toggle_reason
    ?user_seat_expiration_inactive_time ?warp_auth_session_duration
    ~auth_domain ~custom_pages ~login_design __resource_id =
  let __resource_type = "cloudflare_access_organization" in
  let __resource =
    {
      allow_authenticate_via_warp;
      auth_domain;
      auto_redirect_to_identity;
      is_ui_read_only;
      name;
      session_duration;
      ui_read_only_toggle_reason;
      user_seat_expiration_inactive_time;
      warp_auth_session_duration;
      custom_pages;
      login_design;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_organization __resource);
  ()