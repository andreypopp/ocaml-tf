(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_ssl_options = {
  bundle_method : string prop option; [@option]
  certificate : string prop option; [@option]
  geo_restrictions : string prop option; [@option]
  private_key : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_ssl_options) -> ()

let yojson_of_custom_ssl_options =
  (function
   | {
       bundle_method = v_bundle_method;
       certificate = v_certificate;
       geo_restrictions = v_geo_restrictions;
       private_key = v_private_key;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_geo_restrictions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "geo_restrictions", arg in
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
         match v_bundle_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bundle_method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_ssl_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_ssl_options

[@@@deriving.end]

type custom_ssl_priority = {
  id : string prop option; [@option]
  priority : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_ssl_priority) -> ()

let yojson_of_custom_ssl_priority =
  (function
   | { id = v_id; priority = v_priority } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
       `Assoc bnds
    : custom_ssl_priority -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_ssl_priority

[@@@deriving.end]

type cloudflare_custom_ssl = {
  id : string prop option; [@option]
  zone_id : string prop;
  custom_ssl_options : custom_ssl_options list;
  custom_ssl_priority : custom_ssl_priority list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_custom_ssl) -> ()

let yojson_of_cloudflare_custom_ssl =
  (function
   | {
       id = v_id;
       zone_id = v_zone_id;
       custom_ssl_options = v_custom_ssl_options;
       custom_ssl_priority = v_custom_ssl_priority;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_ssl_priority
             v_custom_ssl_priority
         in
         ("custom_ssl_priority", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_ssl_options
             v_custom_ssl_options
         in
         ("custom_ssl_options", arg) :: bnds
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
       `Assoc bnds
    : cloudflare_custom_ssl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_custom_ssl

[@@@deriving.end]

let custom_ssl_options ?bundle_method ?certificate ?geo_restrictions
    ?private_key ?type_ () : custom_ssl_options =
  {
    bundle_method;
    certificate;
    geo_restrictions;
    private_key;
    type_;
  }

let custom_ssl_priority ?id ?priority () : custom_ssl_priority =
  { id; priority }

let cloudflare_custom_ssl ?id ?(custom_ssl_options = [])
    ?(custom_ssl_priority = []) ~zone_id () : cloudflare_custom_ssl =
  { id; zone_id; custom_ssl_options; custom_ssl_priority }

type t = {
  tf_name : string;
  expires_on : string prop;
  hosts : string list prop;
  id : string prop;
  issuer : string prop;
  modified_on : string prop;
  priority : float prop;
  signature : string prop;
  status : string prop;
  uploaded_on : string prop;
  zone_id : string prop;
}

let make ?id ?(custom_ssl_options = []) ?(custom_ssl_priority = [])
    ~zone_id __id =
  let __type = "cloudflare_custom_ssl" in
  let __attrs =
    ({
       tf_name = __id;
       expires_on = Prop.computed __type __id "expires_on";
       hosts = Prop.computed __type __id "hosts";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       modified_on = Prop.computed __type __id "modified_on";
       priority = Prop.computed __type __id "priority";
       signature = Prop.computed __type __id "signature";
       status = Prop.computed __type __id "status";
       uploaded_on = Prop.computed __type __id "uploaded_on";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_custom_ssl
        (cloudflare_custom_ssl ?id ~custom_ssl_options
           ~custom_ssl_priority ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(custom_ssl_options = [])
    ?(custom_ssl_priority = []) ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~custom_ssl_options ~custom_ssl_priority ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
