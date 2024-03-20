(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_authenticated_origin_pulls = {
  authenticated_origin_pulls_certificate : string prop option;
      [@option]
  enabled : bool prop;
  hostname : string prop option; [@option]
  id : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_authenticated_origin_pulls) -> ()

let yojson_of_cloudflare_authenticated_origin_pulls =
  (function
   | {
       authenticated_origin_pulls_certificate =
         v_authenticated_origin_pulls_certificate;
       enabled = v_enabled;
       hostname = v_hostname;
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
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_authenticated_origin_pulls_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "authenticated_origin_pulls_certificate", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_authenticated_origin_pulls ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_authenticated_origin_pulls

[@@@deriving.end]

let cloudflare_authenticated_origin_pulls
    ?authenticated_origin_pulls_certificate ?hostname ?id ~enabled
    ~zone_id () : cloudflare_authenticated_origin_pulls =
  {
    authenticated_origin_pulls_certificate;
    enabled;
    hostname;
    id;
    zone_id;
  }

type t = {
  authenticated_origin_pulls_certificate : string prop;
  enabled : bool prop;
  hostname : string prop;
  id : string prop;
  zone_id : string prop;
}

let make ?authenticated_origin_pulls_certificate ?hostname ?id
    ~enabled ~zone_id __id =
  let __type = "cloudflare_authenticated_origin_pulls" in
  let __attrs =
    ({
       authenticated_origin_pulls_certificate =
         Prop.computed __type __id
           "authenticated_origin_pulls_certificate";
       enabled = Prop.computed __type __id "enabled";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_authenticated_origin_pulls
        (cloudflare_authenticated_origin_pulls
           ?authenticated_origin_pulls_certificate ?hostname ?id
           ~enabled ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?authenticated_origin_pulls_certificate
    ?hostname ?id ~enabled ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?authenticated_origin_pulls_certificate ?hostname ?id
      ~enabled ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
