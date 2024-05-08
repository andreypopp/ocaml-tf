(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delivery_options = {
  sending_pool_name : string prop;
  tls_policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_options) -> ()

let yojson_of_delivery_options =
  (function
   | {
       sending_pool_name = v_sending_pool_name;
       tls_policy = v_tls_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tls_policy in
         ("tls_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sending_pool_name
         in
         ("sending_pool_name", arg) :: bnds
       in
       `Assoc bnds
    : delivery_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_options

[@@@deriving.end]

type reputation_options = {
  last_fresh_start : string prop;
  reputation_metrics_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reputation_options) -> ()

let yojson_of_reputation_options =
  (function
   | {
       last_fresh_start = v_last_fresh_start;
       reputation_metrics_enabled = v_reputation_metrics_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_reputation_metrics_enabled
         in
         ("reputation_metrics_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_fresh_start
         in
         ("last_fresh_start", arg) :: bnds
       in
       `Assoc bnds
    : reputation_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reputation_options

[@@@deriving.end]

type sending_options = { sending_enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sending_options) -> ()

let yojson_of_sending_options =
  (function
   | { sending_enabled = v_sending_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_sending_enabled in
         ("sending_enabled", arg) :: bnds
       in
       `Assoc bnds
    : sending_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sending_options

[@@@deriving.end]

type suppression_options = {
  suppressed_reasons : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : suppression_options) -> ()

let yojson_of_suppression_options =
  (function
   | { suppressed_reasons = v_suppressed_reasons } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_suppressed_reasons then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_suppressed_reasons
           in
           let bnd = "suppressed_reasons", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : suppression_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_suppression_options

[@@@deriving.end]

type tracking_options = { custom_redirect_domain : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : tracking_options) -> ()

let yojson_of_tracking_options =
  (function
   | { custom_redirect_domain = v_custom_redirect_domain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_redirect_domain
         in
         ("custom_redirect_domain", arg) :: bnds
       in
       `Assoc bnds
    : tracking_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tracking_options

[@@@deriving.end]

type vdm_options__guardian_options = {
  optimized_shared_delivery : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vdm_options__guardian_options) -> ()

let yojson_of_vdm_options__guardian_options =
  (function
   | { optimized_shared_delivery = v_optimized_shared_delivery } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_optimized_shared_delivery
         in
         ("optimized_shared_delivery", arg) :: bnds
       in
       `Assoc bnds
    : vdm_options__guardian_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vdm_options__guardian_options

[@@@deriving.end]

type vdm_options__dashboard_options = {
  engagement_metrics : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vdm_options__dashboard_options) -> ()

let yojson_of_vdm_options__dashboard_options =
  (function
   | { engagement_metrics = v_engagement_metrics } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_engagement_metrics
         in
         ("engagement_metrics", arg) :: bnds
       in
       `Assoc bnds
    : vdm_options__dashboard_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vdm_options__dashboard_options

[@@@deriving.end]

type vdm_options = {
  dashboard_options : vdm_options__dashboard_options list;
      [@default []] [@yojson_drop_default ( = )]
  guardian_options : vdm_options__guardian_options list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vdm_options) -> ()

let yojson_of_vdm_options =
  (function
   | {
       dashboard_options = v_dashboard_options;
       guardian_options = v_guardian_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_guardian_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vdm_options__guardian_options)
               v_guardian_options
           in
           let bnd = "guardian_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dashboard_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vdm_options__dashboard_options)
               v_dashboard_options
           in
           let bnd = "dashboard_options", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : vdm_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vdm_options

[@@@deriving.end]

type aws_sesv2_configuration_set = {
  configuration_set_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_configuration_set) -> ()

let yojson_of_aws_sesv2_configuration_set =
  (function
   | {
       configuration_set_name = v_configuration_set_name;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
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
           yojson_of_prop yojson_of_string v_configuration_set_name
         in
         ("configuration_set_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sesv2_configuration_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_configuration_set

[@@@deriving.end]

let aws_sesv2_configuration_set ?id ?tags ~configuration_set_name ()
    : aws_sesv2_configuration_set =
  { configuration_set_name; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  configuration_set_name : string prop;
  delivery_options : delivery_options list prop;
  id : string prop;
  reputation_options : reputation_options list prop;
  sending_options : sending_options list prop;
  suppression_options : suppression_options list prop;
  tags : (string * string) list prop;
  tracking_options : tracking_options list prop;
  vdm_options : vdm_options list prop;
}

let make ?id ?tags ~configuration_set_name __id =
  let __type = "aws_sesv2_configuration_set" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       configuration_set_name =
         Prop.computed __type __id "configuration_set_name";
       delivery_options =
         Prop.computed __type __id "delivery_options";
       id = Prop.computed __type __id "id";
       reputation_options =
         Prop.computed __type __id "reputation_options";
       sending_options = Prop.computed __type __id "sending_options";
       suppression_options =
         Prop.computed __type __id "suppression_options";
       tags = Prop.computed __type __id "tags";
       tracking_options =
         Prop.computed __type __id "tracking_options";
       vdm_options = Prop.computed __type __id "vdm_options";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_configuration_set
        (aws_sesv2_configuration_set ?id ?tags
           ~configuration_set_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~configuration_set_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~configuration_set_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
