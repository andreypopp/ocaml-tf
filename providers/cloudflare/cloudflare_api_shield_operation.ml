(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_api_shield_operation = {
  endpoint : string prop;
  host : string prop;
  id : string prop option; [@option]
  method_ : string prop; [@key "method"]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_api_shield_operation) -> ()

let yojson_of_cloudflare_api_shield_operation =
  (function
   | {
       endpoint = v_endpoint;
       host = v_host;
       id = v_id;
       method_ = v_method_;
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
         let arg = yojson_of_prop yojson_of_string v_method_ in
         ("method", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_api_shield_operation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_api_shield_operation

[@@@deriving.end]

let cloudflare_api_shield_operation ?id ~endpoint ~host ~method_
    ~zone_id () : cloudflare_api_shield_operation =
  { endpoint; host; id; method_; zone_id }

type t = {
  tf_name : string;
  endpoint : string prop;
  host : string prop;
  id : string prop;
  method_ : string prop;
  zone_id : string prop;
}

let make ?id ~endpoint ~host ~method_ ~zone_id __id =
  let __type = "cloudflare_api_shield_operation" in
  let __attrs =
    ({
       tf_name = __id;
       endpoint = Prop.computed __type __id "endpoint";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       method_ = Prop.computed __type __id "method";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_shield_operation
        (cloudflare_api_shield_operation ?id ~endpoint ~host ~method_
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~endpoint ~host ~method_ ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~endpoint ~host ~method_ ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
