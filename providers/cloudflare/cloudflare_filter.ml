(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_filter = {
  description : string prop option; [@option]
      (** A note that you can use to describe the purpose of the filter. *)
  expression : string prop;  (** The filter expression to be used. *)
  id : string prop option; [@option]  (** id *)
  paused : bool prop option; [@option]
      (** Whether this filter is currently paused. *)
  ref : string prop option; [@option]
      (** Short reference tag to quickly select related rules. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Filter expressions that can be referenced across multiple features,
e.g. Firewall Rules. See [what is a filter](https://developers.cloudflare.com/firewall/api/cf-filters/what-is-a-filter/)
for more details and available fields and operators.
 *)

type t = {
  description : string prop;
  expression : string prop;
  id : string prop;
  paused : bool prop;
  ref : string prop;
  zone_id : string prop;
}

let cloudflare_filter ?description ?id ?paused ?ref ~expression
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_filter" in
  let __resource =
    ({ description; expression; id; paused; ref; zone_id }
      : cloudflare_filter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_filter __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       expression =
         Prop.computed __resource_type __resource_id "expression";
       id = Prop.computed __resource_type __resource_id "id";
       paused = Prop.computed __resource_type __resource_id "paused";
       ref = Prop.computed __resource_type __resource_id "ref";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
