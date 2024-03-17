(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_email_routing_catch_all__action = {
  type_ : string prop; [@key "type"]
      (** Type of supported action. Available values: `drop`, `forward`, `worker`. *)
  value : string prop list;
      (** A list with items in the following form. *)
}
[@@deriving yojson_of]
(** List actions patterns. *)

type cloudflare_email_routing_catch_all__matcher = {
  type_ : string prop; [@key "type"]
      (** Type of matcher. Available values: `all`. *)
}
[@@deriving yojson_of]
(** Matching patterns to forward to your actions. *)

type cloudflare_email_routing_catch_all = {
  enabled : bool prop option; [@option]  (** Routing rule status. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Routing rule name. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
  action : cloudflare_email_routing_catch_all__action list;
  matcher : cloudflare_email_routing_catch_all__matcher list;
}
[@@deriving yojson_of]
(** Provides a resource for managing Email Routing Addresses catch all behaviour.
 *)

let cloudflare_email_routing_catch_all ?enabled ?id ~name ~zone_id
    ~action ~matcher __resource_id =
  let __resource_type = "cloudflare_email_routing_catch_all" in
  let __resource = { enabled; id; name; zone_id; action; matcher } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_email_routing_catch_all __resource);
  ()
