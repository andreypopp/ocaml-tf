(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_email_routing_rule__action = {
  type_ : string; [@key "type"]
      (** Type of action. Available values: `forward`, `worker`, `drop` *)
  value : string list option; [@option]
      (** Value to match on. Required for `type` of `literal`. *)
}
[@@deriving yojson_of]
(** Actions to take when a match is found. *)

type cloudflare_email_routing_rule__matcher = {
  field : string option; [@option]
      (** Field to match on. Required for `type` of `literal`. *)
  type_ : string; [@key "type"]
      (** Type of matcher. Available values: `literal`, `all` *)
  value : string option; [@option]
      (** Value to match on. Required for `type` of `literal`. *)
}
[@@deriving yojson_of]
(** Matching patterns to forward to your actions. *)

type cloudflare_email_routing_rule = {
  enabled : bool option; [@option]
      (** Whether the email routing rule is enabled. *)
  name : string;  (** Routing rule name. *)
  zone_id : string;
      (** The zone identifier to target for the resource. *)
  action : cloudflare_email_routing_rule__action list;
  matcher : cloudflare_email_routing_rule__matcher list;
}
[@@deriving yojson_of]
(** The [Email Routing Rule](https://developers.cloudflare.com/email-routing/setup/email-routing-addresses/#email-rule-actions) resource allows you to create and manage email routing rules for a zone.
 *)

let cloudflare_email_routing_rule ?enabled ~name ~zone_id ~action
    ~matcher __resource_id =
  let __resource_type = "cloudflare_email_routing_rule" in
  let __resource = { enabled; name; zone_id; action; matcher } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_email_routing_rule __resource);
  ()
