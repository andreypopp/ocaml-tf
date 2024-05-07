(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_lb_ip_ranges = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_lb_ip_ranges) -> ()

let yojson_of_google_compute_lb_ip_ranges =
  (function
   | { id = v_id } ->
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
       `Assoc bnds
    : google_compute_lb_ip_ranges ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_lb_ip_ranges

[@@@deriving.end]

let google_compute_lb_ip_ranges ?id () : google_compute_lb_ip_ranges
    =
  { id }

type t = {
  tf_name : string;
  http_ssl_tcp_internal : string list prop;
  id : string prop;
  network : string list prop;
}

let make ?id __id =
  let __type = "google_compute_lb_ip_ranges" in
  let __attrs =
    ({
       tf_name = __id;
       http_ssl_tcp_internal =
         Prop.computed __type __id "http_ssl_tcp_internal";
       id = Prop.computed __type __id "id";
       network = Prop.computed __type __id "network";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_lb_ip_ranges
        (google_compute_lb_ip_ranges ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
