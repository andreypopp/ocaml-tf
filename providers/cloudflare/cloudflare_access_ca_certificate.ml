(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_access_ca_certificate = {
  account_id : string prop option; [@option]
  application_id : string prop;
  id : string prop option; [@option]
  zone_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_ca_certificate) -> ()

let yojson_of_cloudflare_access_ca_certificate =
  (function
   | {
       account_id = v_account_id;
       application_id = v_application_id;
       id = v_id;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_access_ca_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_ca_certificate

[@@@deriving.end]

let cloudflare_access_ca_certificate ?account_id ?id ?zone_id
    ~application_id () : cloudflare_access_ca_certificate =
  { account_id; application_id; id; zone_id }

type t = {
  tf_name : string;
  account_id : string prop;
  application_id : string prop;
  aud : string prop;
  id : string prop;
  public_key : string prop;
  zone_id : string prop;
}

let make ?account_id ?id ?zone_id ~application_id __id =
  let __type = "cloudflare_access_ca_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       application_id = Prop.computed __type __id "application_id";
       aud = Prop.computed __type __id "aud";
       id = Prop.computed __type __id "id";
       public_key = Prop.computed __type __id "public_key";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_ca_certificate
        (cloudflare_access_ca_certificate ?account_id ?id ?zone_id
           ~application_id ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?zone_id ~application_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?zone_id ~application_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
