(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed_request_headers = {
  enabled : bool prop;
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_request_headers) -> ()

let yojson_of_managed_request_headers =
  (function
   | { enabled = v_enabled; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : managed_request_headers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_request_headers

[@@@deriving.end]

type managed_response_headers = {
  enabled : bool prop;
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_response_headers) -> ()

let yojson_of_managed_response_headers =
  (function
   | { enabled = v_enabled; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : managed_response_headers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_response_headers

[@@@deriving.end]

type cloudflare_managed_headers = {
  id : string prop option; [@option]
  zone_id : string prop;
  managed_request_headers : managed_request_headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  managed_response_headers : managed_response_headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_managed_headers) -> ()

let yojson_of_cloudflare_managed_headers =
  (function
   | {
       id = v_id;
       zone_id = v_zone_id;
       managed_request_headers = v_managed_request_headers;
       managed_response_headers = v_managed_response_headers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_managed_response_headers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_managed_response_headers)
               v_managed_response_headers
           in
           let bnd = "managed_response_headers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_managed_request_headers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_managed_request_headers)
               v_managed_request_headers
           in
           let bnd = "managed_request_headers", arg in
           bnd :: bnds
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
    : cloudflare_managed_headers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_managed_headers

[@@@deriving.end]

let managed_request_headers ~enabled ~id () : managed_request_headers
    =
  { enabled; id }

let managed_response_headers ~enabled ~id () :
    managed_response_headers =
  { enabled; id }

let cloudflare_managed_headers ?id ~zone_id ~managed_request_headers
    ~managed_response_headers () : cloudflare_managed_headers =
  { id; zone_id; managed_request_headers; managed_response_headers }

type t = {
  tf_name : string;
  id : string prop;
  zone_id : string prop;
}

let make ?id ~zone_id ~managed_request_headers
    ~managed_response_headers __id =
  let __type = "cloudflare_managed_headers" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_managed_headers
        (cloudflare_managed_headers ?id ~zone_id
           ~managed_request_headers ~managed_response_headers ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~zone_id ~managed_request_headers
    ~managed_response_headers __id =
  let (r : _ Tf_core.resource) =
    make ?id ~zone_id ~managed_request_headers
      ~managed_response_headers __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
