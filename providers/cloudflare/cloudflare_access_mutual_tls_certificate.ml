(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_access_mutual_tls_certificate = {
  account_id : string prop option; [@option]
  associated_hostnames : string prop list option; [@option]
  certificate : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  zone_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_mutual_tls_certificate) -> ()

let yojson_of_cloudflare_access_mutual_tls_certificate =
  (function
   | {
       account_id = v_account_id;
       associated_hostnames = v_associated_hostnames;
       certificate = v_certificate;
       id = v_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_associated_hostnames with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "associated_hostnames", arg in
             bnd :: bnds
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
    : cloudflare_access_mutual_tls_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_mutual_tls_certificate

[@@@deriving.end]

let cloudflare_access_mutual_tls_certificate ?account_id
    ?associated_hostnames ?certificate ?id ?zone_id ~name () :
    cloudflare_access_mutual_tls_certificate =
  {
    account_id;
    associated_hostnames;
    certificate;
    id;
    name;
    zone_id;
  }

type t = {
  account_id : string prop;
  associated_hostnames : string list prop;
  certificate : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  zone_id : string prop;
}

let make ?account_id ?associated_hostnames ?certificate ?id ?zone_id
    ~name __id =
  let __type = "cloudflare_access_mutual_tls_certificate" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       associated_hostnames =
         Prop.computed __type __id "associated_hostnames";
       certificate = Prop.computed __type __id "certificate";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_mutual_tls_certificate
        (cloudflare_access_mutual_tls_certificate ?account_id
           ?associated_hostnames ?certificate ?id ?zone_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?associated_hostnames
    ?certificate ?id ?zone_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?associated_hostnames ?certificate ?id ?zone_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
