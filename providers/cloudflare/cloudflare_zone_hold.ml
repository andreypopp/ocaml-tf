(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_zone_hold = {
  hold : bool prop;
  hold_after : string prop option; [@option]
  id : string prop option; [@option]
  include_subdomains : bool prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_zone_hold) -> ()

let yojson_of_cloudflare_zone_hold =
  (function
   | {
       hold = v_hold;
       hold_after = v_hold_after;
       id = v_id;
       include_subdomains = v_include_subdomains;
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
         match v_include_subdomains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_subdomains", arg in
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
         match v_hold_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hold_after", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_hold in
         ("hold", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_zone_hold -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_zone_hold

[@@@deriving.end]

let cloudflare_zone_hold ?hold_after ?id ?include_subdomains ~hold
    ~zone_id () : cloudflare_zone_hold =
  { hold; hold_after; id; include_subdomains; zone_id }

type t = {
  tf_name : string;
  hold : bool prop;
  hold_after : string prop;
  id : string prop;
  include_subdomains : bool prop;
  zone_id : string prop;
}

let make ?hold_after ?id ?include_subdomains ~hold ~zone_id __id =
  let __type = "cloudflare_zone_hold" in
  let __attrs =
    ({
       tf_name = __id;
       hold = Prop.computed __type __id "hold";
       hold_after = Prop.computed __type __id "hold_after";
       id = Prop.computed __type __id "id";
       include_subdomains =
         Prop.computed __type __id "include_subdomains";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone_hold
        (cloudflare_zone_hold ?hold_after ?id ?include_subdomains
           ~hold ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?hold_after ?id ?include_subdomains ~hold
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?hold_after ?id ?include_subdomains ~hold ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
