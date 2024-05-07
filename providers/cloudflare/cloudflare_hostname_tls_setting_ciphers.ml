(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_hostname_tls_setting_ciphers = {
  hostname : string prop;
  id : string prop option; [@option]
  ports : float prop list option; [@option]
  value : string prop list;
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_hostname_tls_setting_ciphers) -> ()

let yojson_of_cloudflare_hostname_tls_setting_ciphers =
  (function
   | {
       hostname = v_hostname;
       id = v_id;
       ports = v_ports;
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_value
         in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "ports", arg in
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
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_hostname_tls_setting_ciphers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_hostname_tls_setting_ciphers

[@@@deriving.end]

let cloudflare_hostname_tls_setting_ciphers ?id ?ports ~hostname
    ~value ~zone_id () : cloudflare_hostname_tls_setting_ciphers =
  { hostname; id; ports; value; zone_id }

type t = {
  tf_name : string;
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  ports : float list prop;
  updated_at : string prop;
  value : string list prop;
  zone_id : string prop;
}

let make ?id ?ports ~hostname ~value ~zone_id __id =
  let __type = "cloudflare_hostname_tls_setting_ciphers" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       ports = Prop.computed __type __id "ports";
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
      yojson_of_cloudflare_hostname_tls_setting_ciphers
        (cloudflare_hostname_tls_setting_ciphers ?id ?ports ~hostname
           ~value ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ports ~hostname ~value ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ports ~hostname ~value ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
