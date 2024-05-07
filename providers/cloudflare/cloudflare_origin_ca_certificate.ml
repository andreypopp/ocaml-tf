(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_origin_ca_certificate = {
  csr : string prop;
  hostnames : string prop list;
  id : string prop option; [@option]
  min_days_for_renewal : float prop option; [@option]
  request_type : string prop;
  requested_validity : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_origin_ca_certificate) -> ()

let yojson_of_cloudflare_origin_ca_certificate =
  (function
   | {
       csr = v_csr;
       hostnames = v_hostnames;
       id = v_id;
       min_days_for_renewal = v_min_days_for_renewal;
       request_type = v_request_type;
       requested_validity = v_requested_validity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_requested_validity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "requested_validity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_request_type in
         ("request_type", arg) :: bnds
       in
       let bnds =
         match v_min_days_for_renewal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_days_for_renewal", arg in
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_hostnames
         in
         ("hostnames", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_csr in
         ("csr", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_origin_ca_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_origin_ca_certificate

[@@@deriving.end]

let cloudflare_origin_ca_certificate ?id ?min_days_for_renewal
    ?requested_validity ~csr ~hostnames ~request_type () :
    cloudflare_origin_ca_certificate =
  {
    csr;
    hostnames;
    id;
    min_days_for_renewal;
    request_type;
    requested_validity;
  }

type t = {
  tf_name : string;
  certificate : string prop;
  csr : string prop;
  expires_on : string prop;
  hostnames : string list prop;
  id : string prop;
  min_days_for_renewal : float prop;
  request_type : string prop;
  requested_validity : float prop;
}

let make ?id ?min_days_for_renewal ?requested_validity ~csr
    ~hostnames ~request_type __id =
  let __type = "cloudflare_origin_ca_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate = Prop.computed __type __id "certificate";
       csr = Prop.computed __type __id "csr";
       expires_on = Prop.computed __type __id "expires_on";
       hostnames = Prop.computed __type __id "hostnames";
       id = Prop.computed __type __id "id";
       min_days_for_renewal =
         Prop.computed __type __id "min_days_for_renewal";
       request_type = Prop.computed __type __id "request_type";
       requested_validity =
         Prop.computed __type __id "requested_validity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_origin_ca_certificate
        (cloudflare_origin_ca_certificate ?id ?min_days_for_renewal
           ?requested_validity ~csr ~hostnames ~request_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?min_days_for_renewal ?requested_validity
    ~csr ~hostnames ~request_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?min_days_for_renewal ?requested_validity ~csr
      ~hostnames ~request_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
