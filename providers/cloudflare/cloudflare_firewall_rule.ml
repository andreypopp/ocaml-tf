(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_firewall_rule = {
  action : string prop;
  description : string prop option; [@option]
  filter_id : string prop;
  id : string prop option; [@option]
  paused : bool prop option; [@option]
  priority : float prop option; [@option]
  products : string prop list option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_firewall_rule) -> ()

let yojson_of_cloudflare_firewall_rule =
  (function
   | {
       action = v_action;
       description = v_description;
       filter_id = v_filter_id;
       id = v_id;
       paused = v_paused;
       priority = v_priority;
       products = v_products;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_products with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "products", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_paused with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "paused", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter_id in
         ("filter_id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_firewall_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_firewall_rule

[@@@deriving.end]

let cloudflare_firewall_rule ?description ?id ?paused ?priority
    ?products ~action ~filter_id ~zone_id () :
    cloudflare_firewall_rule =
  {
    action;
    description;
    filter_id;
    id;
    paused;
    priority;
    products;
    zone_id;
  }

type t = {
  action : string prop;
  description : string prop;
  filter_id : string prop;
  id : string prop;
  paused : bool prop;
  priority : float prop;
  products : string list prop;
  zone_id : string prop;
}

let make ?description ?id ?paused ?priority ?products ~action
    ~filter_id ~zone_id __id =
  let __type = "cloudflare_firewall_rule" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       description = Prop.computed __type __id "description";
       filter_id = Prop.computed __type __id "filter_id";
       id = Prop.computed __type __id "id";
       paused = Prop.computed __type __id "paused";
       priority = Prop.computed __type __id "priority";
       products = Prop.computed __type __id "products";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_firewall_rule
        (cloudflare_firewall_rule ?description ?id ?paused ?priority
           ?products ~action ~filter_id ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?paused ?priority ?products
    ~action ~filter_id ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?paused ?priority ?products ~action
      ~filter_id ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
