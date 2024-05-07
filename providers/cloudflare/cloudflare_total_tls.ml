(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_total_tls = {
  certificate_authority : string prop option; [@option]
  enabled : bool prop;
  id : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_total_tls) -> ()

let yojson_of_cloudflare_total_tls =
  (function
   | {
       certificate_authority = v_certificate_authority;
       enabled = v_enabled;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_certificate_authority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_authority", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_total_tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_total_tls

[@@@deriving.end]

let cloudflare_total_tls ?certificate_authority ?id ~enabled ~zone_id
    () : cloudflare_total_tls =
  { certificate_authority; enabled; id; zone_id }

type t = {
  tf_name : string;
  certificate_authority : string prop;
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

let make ?certificate_authority ?id ~enabled ~zone_id __id =
  let __type = "cloudflare_total_tls" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_authority =
         Prop.computed __type __id "certificate_authority";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_total_tls
        (cloudflare_total_tls ?certificate_authority ?id ~enabled
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_authority ?id ~enabled ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_authority ?id ~enabled ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
