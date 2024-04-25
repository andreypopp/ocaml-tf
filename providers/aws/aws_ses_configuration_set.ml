(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delivery_options = { tls_policy : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_options) -> ()

let yojson_of_delivery_options =
  (function
   | { tls_policy = v_tls_policy } ->
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
       `Assoc bnds
    : delivery_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_options

[@@@deriving.end]

type tracking_options = {
  custom_redirect_domain : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tracking_options) -> ()

let yojson_of_tracking_options =
  (function
   | { custom_redirect_domain = v_custom_redirect_domain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_custom_redirect_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_redirect_domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tracking_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tracking_options

[@@@deriving.end]

type aws_ses_configuration_set = {
  id : string prop option; [@option]
  name : string prop;
  reputation_metrics_enabled : bool prop option; [@option]
  sending_enabled : bool prop option; [@option]
  delivery_options : delivery_options list;
  tracking_options : tracking_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_configuration_set) -> ()

let yojson_of_aws_ses_configuration_set =
  (function
   | {
       id = v_id;
       name = v_name;
       reputation_metrics_enabled = v_reputation_metrics_enabled;
       sending_enabled = v_sending_enabled;
       delivery_options = v_delivery_options;
       tracking_options = v_tracking_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
           yojson_of_list yojson_of_delivery_options
             v_delivery_options
         in
         ("delivery_options", arg) :: bnds
       in
       let bnds =
         match v_sending_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sending_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reputation_metrics_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reputation_metrics_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_ses_configuration_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_configuration_set

[@@@deriving.end]

let delivery_options ?tls_policy () : delivery_options =
  { tls_policy }

let tracking_options ?custom_redirect_domain () : tracking_options =
  { custom_redirect_domain }

let aws_ses_configuration_set ?id ?reputation_metrics_enabled
    ?sending_enabled ?(delivery_options = [])
    ?(tracking_options = []) ~name () : aws_ses_configuration_set =
  {
    id;
    name;
    reputation_metrics_enabled;
    sending_enabled;
    delivery_options;
    tracking_options;
  }

type t = {
  arn : string prop;
  id : string prop;
  last_fresh_start : string prop;
  name : string prop;
  reputation_metrics_enabled : bool prop;
  sending_enabled : bool prop;
}

let make ?id ?reputation_metrics_enabled ?sending_enabled
    ?(delivery_options = []) ?(tracking_options = []) ~name __id =
  let __type = "aws_ses_configuration_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       last_fresh_start =
         Prop.computed __type __id "last_fresh_start";
       name = Prop.computed __type __id "name";
       reputation_metrics_enabled =
         Prop.computed __type __id "reputation_metrics_enabled";
       sending_enabled = Prop.computed __type __id "sending_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_configuration_set
        (aws_ses_configuration_set ?id ?reputation_metrics_enabled
           ?sending_enabled ~delivery_options ~tracking_options ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?reputation_metrics_enabled
    ?sending_enabled ?(delivery_options = [])
    ?(tracking_options = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?reputation_metrics_enabled ?sending_enabled
      ~delivery_options ~tracking_options ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
