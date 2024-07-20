(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type settings = {
  china_network : bool prop option; [@option]
  client_certificate_forwarding : bool prop option; [@option]
  hostname : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | {
       china_network = v_china_network;
       client_certificate_forwarding =
         v_client_certificate_forwarding;
       hostname = v_hostname;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         match v_client_certificate_forwarding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_certificate_forwarding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_china_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "china_network", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

[@@@deriving.end]

type cloudflare_access_mutual_tls_hostname_settings = {
  account_id : string prop option; [@option]
  zone_id : string prop option; [@option]
  settings : settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cloudflare_access_mutual_tls_hostname_settings) -> ()

let yojson_of_cloudflare_access_mutual_tls_hostname_settings =
  (function
   | {
       account_id = v_account_id;
       zone_id = v_zone_id;
       settings = v_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings) v_settings
           in
           let bnd = "settings", arg in
           bnd :: bnds
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
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_access_mutual_tls_hostname_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_mutual_tls_hostname_settings

[@@@deriving.end]

let settings ?china_network ?client_certificate_forwarding ~hostname
    () : settings =
  { china_network; client_certificate_forwarding; hostname }

let cloudflare_access_mutual_tls_hostname_settings ?account_id
    ?zone_id ?(settings = []) () :
    cloudflare_access_mutual_tls_hostname_settings =
  { account_id; zone_id; settings }

type t = {
  tf_name : string;
  account_id : string prop;
  zone_id : string prop;
}

let make ?account_id ?zone_id ?(settings = []) __id =
  let __type = "cloudflare_access_mutual_tls_hostname_settings" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_mutual_tls_hostname_settings
        (cloudflare_access_mutual_tls_hostname_settings ?account_id
           ?zone_id ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?zone_id ?(settings = []) __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?zone_id ~settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
