(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_keyless_certificate = {
  bundle_method : string prop option; [@option]
  certificate : string prop;
  enabled : bool prop option; [@option]
  host : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  port : float prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_keyless_certificate) -> ()

let yojson_of_cloudflare_keyless_certificate =
  (function
   | {
       bundle_method = v_bundle_method;
       certificate = v_certificate;
       enabled = v_enabled;
       host = v_host;
       id = v_id;
       name = v_name;
       port = v_port;
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       let bnds =
         match v_bundle_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bundle_method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_keyless_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_keyless_certificate

[@@@deriving.end]

let cloudflare_keyless_certificate ?bundle_method ?enabled ?id ?name
    ?port ~certificate ~host ~zone_id () :
    cloudflare_keyless_certificate =
  {
    bundle_method;
    certificate;
    enabled;
    host;
    id;
    name;
    port;
    zone_id;
  }

type t = {
  tf_name : string;
  bundle_method : string prop;
  certificate : string prop;
  enabled : bool prop;
  host : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  status : string prop;
  zone_id : string prop;
}

let make ?bundle_method ?enabled ?id ?name ?port ~certificate ~host
    ~zone_id __id =
  let __type = "cloudflare_keyless_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       bundle_method = Prop.computed __type __id "bundle_method";
       certificate = Prop.computed __type __id "certificate";
       enabled = Prop.computed __type __id "enabled";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       status = Prop.computed __type __id "status";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_keyless_certificate
        (cloudflare_keyless_certificate ?bundle_method ?enabled ?id
           ?name ?port ~certificate ~host ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?bundle_method ?enabled ?id ?name ?port
    ~certificate ~host ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?bundle_method ?enabled ?id ?name ?port ~certificate ~host
      ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
