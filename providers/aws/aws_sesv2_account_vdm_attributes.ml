(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dashboard_attributes = {
  engagement_metrics : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dashboard_attributes) -> ()

let yojson_of_dashboard_attributes =
  (function
   | { engagement_metrics = v_engagement_metrics } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_engagement_metrics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engagement_metrics", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dashboard_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dashboard_attributes

[@@@deriving.end]

type guardian_attributes = {
  optimized_shared_delivery : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : guardian_attributes) -> ()

let yojson_of_guardian_attributes =
  (function
   | { optimized_shared_delivery = v_optimized_shared_delivery } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optimized_shared_delivery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "optimized_shared_delivery", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : guardian_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_guardian_attributes

[@@@deriving.end]

type aws_sesv2_account_vdm_attributes = {
  id : string prop option; [@option]
  vdm_enabled : string prop;
  dashboard_attributes : dashboard_attributes list;
  guardian_attributes : guardian_attributes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_account_vdm_attributes) -> ()

let yojson_of_aws_sesv2_account_vdm_attributes =
  (function
   | {
       id = v_id;
       vdm_enabled = v_vdm_enabled;
       dashboard_attributes = v_dashboard_attributes;
       guardian_attributes = v_guardian_attributes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_guardian_attributes
             v_guardian_attributes
         in
         ("guardian_attributes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dashboard_attributes
             v_dashboard_attributes
         in
         ("dashboard_attributes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vdm_enabled in
         ("vdm_enabled", arg) :: bnds
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
    : aws_sesv2_account_vdm_attributes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_account_vdm_attributes

[@@@deriving.end]

let dashboard_attributes ?engagement_metrics () :
    dashboard_attributes =
  { engagement_metrics }

let guardian_attributes ?optimized_shared_delivery () :
    guardian_attributes =
  { optimized_shared_delivery }

let aws_sesv2_account_vdm_attributes ?id ?(dashboard_attributes = [])
    ?(guardian_attributes = []) ~vdm_enabled () :
    aws_sesv2_account_vdm_attributes =
  { id; vdm_enabled; dashboard_attributes; guardian_attributes }

type t = { id : string prop; vdm_enabled : string prop }

let make ?id ?(dashboard_attributes = []) ?(guardian_attributes = [])
    ~vdm_enabled __id =
  let __type = "aws_sesv2_account_vdm_attributes" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       vdm_enabled = Prop.computed __type __id "vdm_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_account_vdm_attributes
        (aws_sesv2_account_vdm_attributes ?id ~dashboard_attributes
           ~guardian_attributes ~vdm_enabled ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(dashboard_attributes = [])
    ?(guardian_attributes = []) ~vdm_enabled __id =
  let (r : _ Tf_core.resource) =
    make ?id ~dashboard_attributes ~guardian_attributes ~vdm_enabled
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
