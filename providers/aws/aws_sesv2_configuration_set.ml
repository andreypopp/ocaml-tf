(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delivery_options = {
  sending_pool_name : string prop option; [@option]
  tls_policy : string prop option; [@option]
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
         match v_tls_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sending_pool_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sending_pool_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_options

[@@@deriving.end]

type reputation_options = {
  reputation_metrics_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reputation_options) -> ()

let yojson_of_reputation_options =
  (function
   | { reputation_metrics_enabled = v_reputation_metrics_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reputation_metrics_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reputation_metrics_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : reputation_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reputation_options

[@@@deriving.end]

type sending_options = {
  sending_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sending_options) -> ()

let yojson_of_sending_options =
  (function
   | { sending_enabled = v_sending_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sending_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sending_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sending_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sending_options

[@@@deriving.end]

type suppression_options = {
  suppressed_reasons : string prop list option; [@option]
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
         match v_suppressed_reasons with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type vdm_options__dashboard_options = {
  engagement_metrics : string prop option; [@option]
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
         match v_engagement_metrics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engagement_metrics", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vdm_options__dashboard_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vdm_options__dashboard_options

[@@@deriving.end]

type vdm_options__guardian_options = {
  optimized_shared_delivery : string prop option; [@option]
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
         match v_optimized_shared_delivery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "optimized_shared_delivery", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vdm_options__guardian_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vdm_options__guardian_options

[@@@deriving.end]

type vdm_options = {
  dashboard_options : vdm_options__dashboard_options list;
  guardian_options : vdm_options__guardian_options list;
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
         let arg =
           yojson_of_list yojson_of_vdm_options__guardian_options
             v_guardian_options
         in
         ("guardian_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vdm_options__dashboard_options
             v_dashboard_options
         in
         ("dashboard_options", arg) :: bnds
       in
       `Assoc bnds
    : vdm_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vdm_options

[@@@deriving.end]

type aws_sesv2_configuration_set = {
  configuration_set_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  delivery_options : delivery_options list;
  reputation_options : reputation_options list;
  sending_options : sending_options list;
  suppression_options : suppression_options list;
  tracking_options : tracking_options list;
  vdm_options : vdm_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_configuration_set) -> ()

let yojson_of_aws_sesv2_configuration_set =
  (function
   | {
       configuration_set_name = v_configuration_set_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       delivery_options = v_delivery_options;
       reputation_options = v_reputation_options;
       sending_options = v_sending_options;
       suppression_options = v_suppression_options;
       tracking_options = v_tracking_options;
       vdm_options = v_vdm_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vdm_options v_vdm_options
         in
         ("vdm_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_tracking_options
             v_tracking_options
         in
         ("tracking_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_suppression_options
             v_suppression_options
         in
         ("suppression_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sending_options v_sending_options
         in
         ("sending_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_reputation_options
             v_reputation_options
         in
         ("reputation_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_delivery_options
             v_delivery_options
         in
         ("delivery_options", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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

let delivery_options ?sending_pool_name ?tls_policy () :
    delivery_options =
  { sending_pool_name; tls_policy }

let reputation_options ?reputation_metrics_enabled () :
    reputation_options =
  { reputation_metrics_enabled }

let sending_options ?sending_enabled () : sending_options =
  { sending_enabled }

let suppression_options ?suppressed_reasons () : suppression_options
    =
  { suppressed_reasons }

let tracking_options ~custom_redirect_domain () : tracking_options =
  { custom_redirect_domain }

let vdm_options__dashboard_options ?engagement_metrics () :
    vdm_options__dashboard_options =
  { engagement_metrics }

let vdm_options__guardian_options ?optimized_shared_delivery () :
    vdm_options__guardian_options =
  { optimized_shared_delivery }

let vdm_options ?(dashboard_options = []) ?(guardian_options = []) ()
    : vdm_options =
  { dashboard_options; guardian_options }

let aws_sesv2_configuration_set ?id ?tags ?tags_all
    ?(delivery_options = []) ?(reputation_options = [])
    ?(sending_options = []) ?(suppression_options = [])
    ?(tracking_options = []) ?(vdm_options = [])
    ~configuration_set_name () : aws_sesv2_configuration_set =
  {
    configuration_set_name;
    id;
    tags;
    tags_all;
    delivery_options;
    reputation_options;
    sending_options;
    suppression_options;
    tracking_options;
    vdm_options;
  }

type t = {
  tf_name : string;
  arn : string prop;
  configuration_set_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(delivery_options = [])
    ?(reputation_options = []) ?(sending_options = [])
    ?(suppression_options = []) ?(tracking_options = [])
    ?(vdm_options = []) ~configuration_set_name __id =
  let __type = "aws_sesv2_configuration_set" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       configuration_set_name =
         Prop.computed __type __id "configuration_set_name";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_configuration_set
        (aws_sesv2_configuration_set ?id ?tags ?tags_all
           ~delivery_options ~reputation_options ~sending_options
           ~suppression_options ~tracking_options ~vdm_options
           ~configuration_set_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?(delivery_options = [])
    ?(reputation_options = []) ?(sending_options = [])
    ?(suppression_options = []) ?(tracking_options = [])
    ?(vdm_options = []) ~configuration_set_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~delivery_options ~reputation_options
      ~sending_options ~suppression_options ~tracking_options
      ~vdm_options ~configuration_set_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
