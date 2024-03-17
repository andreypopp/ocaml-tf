(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_filter = {
  description : string option; [@option]
      (** A note that you can use to describe the purpose of the filter. *)
  expression : string;  (** The filter expression to be used. *)
  paused : bool option; [@option]
      (** Whether this filter is currently paused. *)
  ref : string option; [@option]
      (** Short reference tag to quickly select related rules. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Filter expressions that can be referenced across multiple features,
e.g. Firewall Rules. See [what is a filter](https://developers.cloudflare.com/firewall/api/cf-filters/what-is-a-filter/)
for more details and available fields and operators.
 *)

let cloudflare_filter ?description ?paused ?ref ~expression ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_filter" in
  let __resource =
    { description; expression; paused; ref; zone_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_filter __resource);
  ()
