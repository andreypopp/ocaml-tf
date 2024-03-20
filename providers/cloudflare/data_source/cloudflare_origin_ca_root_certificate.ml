(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_origin_ca_root_certificate = {
  algorithm : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_origin_ca_root_certificate) -> ()

let yojson_of_cloudflare_origin_ca_root_certificate =
  (function
   | { algorithm = v_algorithm; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_origin_ca_root_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_origin_ca_root_certificate

[@@@deriving.end]

let cloudflare_origin_ca_root_certificate ?id ~algorithm () :
    cloudflare_origin_ca_root_certificate =
  { algorithm; id }

type t = {
  algorithm : string prop;
  cert_pem : string prop;
  id : string prop;
}

let make ?id ~algorithm __id =
  let __type = "cloudflare_origin_ca_root_certificate" in
  let __attrs =
    ({
       algorithm = Prop.computed __type __id "algorithm";
       cert_pem = Prop.computed __type __id "cert_pem";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_origin_ca_root_certificate
        (cloudflare_origin_ca_root_certificate ?id ~algorithm ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~algorithm __id =
  let (r : _ Tf_core.resource) = make ?id ~algorithm __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
