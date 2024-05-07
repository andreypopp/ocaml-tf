(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type uptime_check_ips = {
  ip_address : string prop;
  location : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : uptime_check_ips) -> ()

let yojson_of_uptime_check_ips =
  (function
   | {
       ip_address = v_ip_address;
       location = v_location;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : uptime_check_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_uptime_check_ips

[@@@deriving.end]

type google_monitoring_uptime_check_ips = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_uptime_check_ips) -> ()

let yojson_of_google_monitoring_uptime_check_ips =
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
    : google_monitoring_uptime_check_ips ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_uptime_check_ips

[@@@deriving.end]

let google_monitoring_uptime_check_ips ?id () :
    google_monitoring_uptime_check_ips =
  { id }

type t = {
  tf_name : string;
  id : string prop;
  uptime_check_ips : uptime_check_ips list prop;
}

let make ?id __id =
  let __type = "google_monitoring_uptime_check_ips" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       uptime_check_ips =
         Prop.computed __type __id "uptime_check_ips";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_uptime_check_ips
        (google_monitoring_uptime_check_ips ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
