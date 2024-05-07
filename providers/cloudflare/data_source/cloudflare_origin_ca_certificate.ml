(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_origin_ca_certificate = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_origin_ca_certificate) -> ()

let yojson_of_cloudflare_origin_ca_certificate =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_origin_ca_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_origin_ca_certificate

[@@@deriving.end]

let cloudflare_origin_ca_certificate ~id () :
    cloudflare_origin_ca_certificate =
  { id }

type t = {
  tf_name : string;
  certificate : string prop;
  expires_on : string prop;
  hostnames : string list prop;
  id : string prop;
  request_type : string prop;
  revoked_at : string prop;
}

let make ~id __id =
  let __type = "cloudflare_origin_ca_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate = Prop.computed __type __id "certificate";
       expires_on = Prop.computed __type __id "expires_on";
       hostnames = Prop.computed __type __id "hostnames";
       id = Prop.computed __type __id "id";
       request_type = Prop.computed __type __id "request_type";
       revoked_at = Prop.computed __type __id "revoked_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_origin_ca_certificate
        (cloudflare_origin_ca_certificate ~id ());
    attrs = __attrs;
  }

let register ?tf_module ~id __id =
  let (r : _ Tf_core.resource) = make ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
