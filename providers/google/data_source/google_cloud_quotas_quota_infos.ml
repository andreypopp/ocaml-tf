(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type quota_infos__quota_increase_eligibility = {
  ineligibility_reason : string prop;
  is_eligible : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota_infos__quota_increase_eligibility) -> ()

let yojson_of_quota_infos__quota_increase_eligibility =
  (function
   | {
       ineligibility_reason = v_ineligibility_reason;
       is_eligible = v_is_eligible;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_eligible in
         ("is_eligible", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ineligibility_reason
         in
         ("ineligibility_reason", arg) :: bnds
       in
       `Assoc bnds
    : quota_infos__quota_increase_eligibility ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota_infos__quota_increase_eligibility

[@@@deriving.end]

type quota_infos__dimensions_infos__details = { value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : quota_infos__dimensions_infos__details) -> ()

let yojson_of_quota_infos__dimensions_infos__details =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : quota_infos__dimensions_infos__details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota_infos__dimensions_infos__details

[@@@deriving.end]

type quota_infos__dimensions_infos = {
  applicable_locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  details : quota_infos__dimensions_infos__details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimensions : string prop Tf_core.assoc;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota_infos__dimensions_infos) -> ()

let yojson_of_quota_infos__dimensions_infos =
  (function
   | {
       applicable_locations = v_applicable_locations;
       details = v_details;
       dimensions = v_dimensions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_dimensions
         in
         ("dimensions", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_details then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_quota_infos__dimensions_infos__details)
               v_details
           in
           let bnd = "details", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_applicable_locations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_applicable_locations
           in
           let bnd = "applicable_locations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : quota_infos__dimensions_infos ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota_infos__dimensions_infos

[@@@deriving.end]

type quota_infos = {
  container_type : string prop;
  dimensions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimensions_infos : quota_infos__dimensions_infos list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  is_concurrent : bool prop;
  is_fixed : bool prop;
  is_precise : bool prop;
  metric : string prop;
  metric_display_name : string prop;
  metric_unit : string prop;
  name : string prop;
  quota_display_name : string prop;
  quota_id : string prop;
  quota_increase_eligibility :
    quota_infos__quota_increase_eligibility list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  refresh_interval : string prop;
  service : string prop;
  service_request_quota_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota_infos) -> ()

let yojson_of_quota_infos =
  (function
   | {
       container_type = v_container_type;
       dimensions = v_dimensions;
       dimensions_infos = v_dimensions_infos;
       is_concurrent = v_is_concurrent;
       is_fixed = v_is_fixed;
       is_precise = v_is_precise;
       metric = v_metric;
       metric_display_name = v_metric_display_name;
       metric_unit = v_metric_unit;
       name = v_name;
       quota_display_name = v_quota_display_name;
       quota_id = v_quota_id;
       quota_increase_eligibility = v_quota_increase_eligibility;
       refresh_interval = v_refresh_interval;
       service = v_service;
       service_request_quota_uri = v_service_request_quota_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_service_request_quota_uri
         in
         ("service_request_quota_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_refresh_interval
         in
         ("refresh_interval", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_quota_increase_eligibility then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_quota_infos__quota_increase_eligibility)
               v_quota_increase_eligibility
           in
           let bnd = "quota_increase_eligibility", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_quota_id in
         ("quota_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_quota_display_name
         in
         ("quota_display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_unit in
         ("metric_unit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metric_display_name
         in
         ("metric_display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric in
         ("metric", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_precise in
         ("is_precise", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_fixed in
         ("is_fixed", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_concurrent in
         ("is_concurrent", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimensions_infos then bnds
         else
           let arg =
             (yojson_of_list yojson_of_quota_infos__dimensions_infos)
               v_dimensions_infos
           in
           let bnd = "dimensions_infos", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimensions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_dimensions
           in
           let bnd = "dimensions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_type
         in
         ("container_type", arg) :: bnds
       in
       `Assoc bnds
    : quota_infos -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota_infos

[@@@deriving.end]

type google_cloud_quotas_quota_infos = {
  id : string prop option; [@option]
  parent : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_quotas_quota_infos) -> ()

let yojson_of_google_cloud_quotas_quota_infos =
  (function
   | { id = v_id; parent = v_parent; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
    : google_cloud_quotas_quota_infos ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_quotas_quota_infos

[@@@deriving.end]

let google_cloud_quotas_quota_infos ?id ~parent ~service () :
    google_cloud_quotas_quota_infos =
  { id; parent; service }

type t = {
  tf_name : string;
  id : string prop;
  parent : string prop;
  quota_infos : quota_infos list prop;
  service : string prop;
}

let make ?id ~parent ~service __id =
  let __type = "google_cloud_quotas_quota_infos" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       parent = Prop.computed __type __id "parent";
       quota_infos = Prop.computed __type __id "quota_infos";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_quotas_quota_infos
        (google_cloud_quotas_quota_infos ?id ~parent ~service ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~parent ~service __id =
  let (r : _ Tf_core.resource) = make ?id ~parent ~service __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
