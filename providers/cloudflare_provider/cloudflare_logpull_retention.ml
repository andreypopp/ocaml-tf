(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_logpull_retention = {
  enabled : bool;  (** Whether you wish to retain logs or not. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Allows management of the Logpull Retention settings used to control whether or not to retain HTTP request logs. *)

let cloudflare_logpull_retention ~enabled ~zone_id __resource_id =
  let __resource_type = "cloudflare_logpull_retention" in
  let __resource = { enabled; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_logpull_retention __resource);
  ()