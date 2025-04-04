(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_event_selector__field_selector = {
  ends_with : string prop list option; [@option]
  equals : string prop list option; [@option]
  field : string prop option; [@option]
  not_ends_with : string prop list option; [@option]
  not_equals : string prop list option; [@option]
  not_starts_with : string prop list option; [@option]
  starts_with : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_event_selector__field_selector) -> ()

let yojson_of_advanced_event_selector__field_selector =
  (function
   | {
       ends_with = v_ends_with;
       equals = v_equals;
       field = v_field;
       not_ends_with = v_not_ends_with;
       not_equals = v_not_equals;
       not_starts_with = v_not_starts_with;
       starts_with = v_starts_with;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_starts_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "starts_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_starts_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_starts_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_equals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_equals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_ends_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_ends_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_equals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "equals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ends_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ends_with", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_event_selector__field_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_event_selector__field_selector

[@@@deriving.end]

type advanced_event_selector = {
  name : string prop option; [@option]
  field_selector : advanced_event_selector__field_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_event_selector) -> ()

let yojson_of_advanced_event_selector =
  (function
   | { name = v_name; field_selector = v_field_selector } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_field_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_advanced_event_selector__field_selector)
               v_field_selector
           in
           let bnd = "field_selector", arg in
           bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_event_selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_event_selector

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_cloudtrail_event_data_store = {
  billing_mode : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  multi_region_enabled : bool prop option; [@option]
  name : string prop;
  organization_enabled : bool prop option; [@option]
  retention_period : float prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  termination_protection_enabled : bool prop option; [@option]
  advanced_event_selector : advanced_event_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudtrail_event_data_store) -> ()

let yojson_of_aws_cloudtrail_event_data_store =
  (function
   | {
       billing_mode = v_billing_mode;
       id = v_id;
       kms_key_id = v_kms_key_id;
       multi_region_enabled = v_multi_region_enabled;
       name = v_name;
       organization_enabled = v_organization_enabled;
       retention_period = v_retention_period;
       tags = v_tags;
       tags_all = v_tags_all;
       termination_protection_enabled =
         v_termination_protection_enabled;
       advanced_event_selector = v_advanced_event_selector;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_event_selector then bnds
         else
           let arg =
             (yojson_of_list yojson_of_advanced_event_selector)
               v_advanced_event_selector
           in
           let bnd = "advanced_event_selector", arg in
           bnd :: bnds
       in
       let bnds =
         match v_termination_protection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "termination_protection_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "organization_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_multi_region_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multi_region_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         match v_billing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudtrail_event_data_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudtrail_event_data_store

[@@@deriving.end]

let advanced_event_selector__field_selector ?ends_with ?equals ?field
    ?not_ends_with ?not_equals ?not_starts_with ?starts_with () :
    advanced_event_selector__field_selector =
  {
    ends_with;
    equals;
    field;
    not_ends_with;
    not_equals;
    not_starts_with;
    starts_with;
  }

let advanced_event_selector ?name ~field_selector () :
    advanced_event_selector =
  { name; field_selector }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudtrail_event_data_store ?billing_mode ?id ?kms_key_id
    ?multi_region_enabled ?organization_enabled ?retention_period
    ?tags ?tags_all ?termination_protection_enabled
    ?(advanced_event_selector = []) ?timeouts ~name () :
    aws_cloudtrail_event_data_store =
  {
    billing_mode;
    id;
    kms_key_id;
    multi_region_enabled;
    name;
    organization_enabled;
    retention_period;
    tags;
    tags_all;
    termination_protection_enabled;
    advanced_event_selector;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  billing_mode : string prop;
  id : string prop;
  kms_key_id : string prop;
  multi_region_enabled : bool prop;
  name : string prop;
  organization_enabled : bool prop;
  retention_period : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  termination_protection_enabled : bool prop;
}

let make ?billing_mode ?id ?kms_key_id ?multi_region_enabled
    ?organization_enabled ?retention_period ?tags ?tags_all
    ?termination_protection_enabled ?(advanced_event_selector = [])
    ?timeouts ~name __id =
  let __type = "aws_cloudtrail_event_data_store" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       billing_mode = Prop.computed __type __id "billing_mode";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       multi_region_enabled =
         Prop.computed __type __id "multi_region_enabled";
       name = Prop.computed __type __id "name";
       organization_enabled =
         Prop.computed __type __id "organization_enabled";
       retention_period =
         Prop.computed __type __id "retention_period";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       termination_protection_enabled =
         Prop.computed __type __id "termination_protection_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudtrail_event_data_store
        (aws_cloudtrail_event_data_store ?billing_mode ?id
           ?kms_key_id ?multi_region_enabled ?organization_enabled
           ?retention_period ?tags ?tags_all
           ?termination_protection_enabled ~advanced_event_selector
           ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?billing_mode ?id ?kms_key_id
    ?multi_region_enabled ?organization_enabled ?retention_period
    ?tags ?tags_all ?termination_protection_enabled
    ?(advanced_event_selector = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?billing_mode ?id ?kms_key_id ?multi_region_enabled
      ?organization_enabled ?retention_period ?tags ?tags_all
      ?termination_protection_enabled ~advanced_event_selector
      ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
