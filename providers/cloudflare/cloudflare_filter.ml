(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let cloudflare_filter ?description ?id ?paused ?ref ~expression
    ~zone_id () : cloudflare_filter =
  { description; expression; id; paused; ref; zone_id }

type t = {
  description : string prop;
  expression : string prop;
  id : string prop;
  paused : bool prop;
  ref : string prop;
  zone_id : string prop;
}

let make ?description ?id ?paused ?ref ~expression ~zone_id __id =
  let __type = "cloudflare_filter" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       expression = Prop.computed __type __id "expression";
       id = Prop.computed __type __id "id";
       paused = Prop.computed __type __id "paused";
       ref = Prop.computed __type __id "ref";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_filter
        (cloudflare_filter ?description ?id ?paused ?ref ~expression
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?paused ?ref ~expression
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?paused ?ref ~expression ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
