(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_hostname_tls_setting = {
  hostname : string prop;
  id : string prop option; [@option]
  setting : string prop;
  value : string prop;
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_hostname_tls_setting) -> ()

let yojson_of_cloudflare_hostname_tls_setting =
  (function
   | {
       hostname = v_hostname;
       id = v_id;
       setting = v_setting;
       value = v_value;
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
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_setting in
         ("setting", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_hostname_tls_setting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_hostname_tls_setting

[@@@deriving.end]

let cloudflare_hostname_tls_setting ?id ~hostname ~setting ~value
    ~zone_id () : cloudflare_hostname_tls_setting =
  { hostname; id; setting; value; zone_id }

type t = {
  tf_name : string;
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  setting : string prop;
  updated_at : string prop;
  value : string prop;
  zone_id : string prop;
}

let make ?id ~hostname ~setting ~value ~zone_id __id =
  let __type = "cloudflare_hostname_tls_setting" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       setting = Prop.computed __type __id "setting";
       updated_at = Prop.computed __type __id "updated_at";
       value = Prop.computed __type __id "value";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_hostname_tls_setting
        (cloudflare_hostname_tls_setting ?id ~hostname ~setting
           ~value ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~hostname ~setting ~value ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~hostname ~setting ~value ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
