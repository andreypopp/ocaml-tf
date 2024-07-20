(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dimensions_infos__details = { value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : dimensions_infos__details) -> ()

let yojson_of_dimensions_infos__details =
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
    : dimensions_infos__details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dimensions_infos__details

[@@@deriving.end]

type dimensions_infos = {
  applicable_locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  details : dimensions_infos__details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimensions : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dimensions_infos) -> ()

let yojson_of_dimensions_infos =
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
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_dimensions
         in
         ("dimensions", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_details then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dimensions_infos__details)
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
    : dimensions_infos -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dimensions_infos

[@@@deriving.end]

type quota_increase_eligibility = {
  ineligibility_reason : string prop;
  is_eligible : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota_increase_eligibility) -> ()

let yojson_of_quota_increase_eligibility =
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
    : quota_increase_eligibility -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota_increase_eligibility

[@@@deriving.end]

type google_cloud_quotas_quota_info = {
  id : string prop option; [@option]
  parent : string prop;
  quota_id : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_quotas_quota_info) -> ()

let yojson_of_google_cloud_quotas_quota_info =
  (function
   | {
       id = v_id;
       parent = v_parent;
       quota_id = v_quota_id;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_quota_id in
         ("quota_id", arg) :: bnds
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
    : google_cloud_quotas_quota_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_quotas_quota_info

[@@@deriving.end]

let google_cloud_quotas_quota_info ?id ~parent ~quota_id ~service ()
    : google_cloud_quotas_quota_info =
  { id; parent; quota_id; service }

type t = {
  tf_name : string;
  container_type : string prop;
  dimensions : string list prop;
  dimensions_infos : dimensions_infos list prop;
  id : string prop;
  is_concurrent : bool prop;
  is_fixed : bool prop;
  is_precise : bool prop;
  metric : string prop;
  metric_display_name : string prop;
  metric_unit : string prop;
  name : string prop;
  parent : string prop;
  quota_display_name : string prop;
  quota_id : string prop;
  quota_increase_eligibility : quota_increase_eligibility list prop;
  refresh_interval : string prop;
  service : string prop;
  service_request_quota_uri : string prop;
}

let make ?id ~parent ~quota_id ~service __id =
  let __type = "google_cloud_quotas_quota_info" in
  let __attrs =
    ({
       tf_name = __id;
       container_type = Prop.computed __type __id "container_type";
       dimensions = Prop.computed __type __id "dimensions";
       dimensions_infos =
         Prop.computed __type __id "dimensions_infos";
       id = Prop.computed __type __id "id";
       is_concurrent = Prop.computed __type __id "is_concurrent";
       is_fixed = Prop.computed __type __id "is_fixed";
       is_precise = Prop.computed __type __id "is_precise";
       metric = Prop.computed __type __id "metric";
       metric_display_name =
         Prop.computed __type __id "metric_display_name";
       metric_unit = Prop.computed __type __id "metric_unit";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       quota_display_name =
         Prop.computed __type __id "quota_display_name";
       quota_id = Prop.computed __type __id "quota_id";
       quota_increase_eligibility =
         Prop.computed __type __id "quota_increase_eligibility";
       refresh_interval =
         Prop.computed __type __id "refresh_interval";
       service = Prop.computed __type __id "service";
       service_request_quota_uri =
         Prop.computed __type __id "service_request_quota_uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_quotas_quota_info
        (google_cloud_quotas_quota_info ?id ~parent ~quota_id
           ~service ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~parent ~quota_id ~service __id =
  let (r : _ Tf_core.resource) =
    make ?id ~parent ~quota_id ~service __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
