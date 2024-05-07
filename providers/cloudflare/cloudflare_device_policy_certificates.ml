(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_device_policy_certificates = {
  enabled : bool prop;
  id : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_device_policy_certificates) -> ()

let yojson_of_cloudflare_device_policy_certificates =
  (function
   | { enabled = v_enabled; id = v_id; zone_id = v_zone_id } ->
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
       `Assoc bnds
    : cloudflare_device_policy_certificates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_device_policy_certificates

[@@@deriving.end]

let cloudflare_device_policy_certificates ?id ~enabled ~zone_id () :
    cloudflare_device_policy_certificates =
  { enabled; id; zone_id }

type t = {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

let make ?id ~enabled ~zone_id __id =
  let __type = "cloudflare_device_policy_certificates" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_cloudflare_device_policy_certificates
        (cloudflare_device_policy_certificates ?id ~enabled ~zone_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~enabled ~zone_id __id =
  let (r : _ Tf_core.resource) = make ?id ~enabled ~zone_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
