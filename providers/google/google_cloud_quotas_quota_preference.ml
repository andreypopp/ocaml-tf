(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type quota_config = {
  annotations : string prop Tf_core.assoc option; [@option]
  preferred_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota_config) -> ()

let yojson_of_quota_config =
  (function
   | {
       annotations = v_annotations;
       preferred_value = v_preferred_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_preferred_value
         in
         ("preferred_value", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : quota_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota_config

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

type google_cloud_quotas_quota_preference = {
  contact_email : string prop option; [@option]
  dimensions : string prop Tf_core.assoc option; [@option]
  id : string prop option; [@option]
  ignore_safety_checks : string prop option; [@option]
  justification : string prop option; [@option]
  name : string prop option; [@option]
  parent : string prop option; [@option]
  quota_id : string prop option; [@option]
  service : string prop option; [@option]
  quota_config : quota_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_quotas_quota_preference) -> ()

let yojson_of_google_cloud_quotas_quota_preference =
  (function
   | {
       contact_email = v_contact_email;
       dimensions = v_dimensions;
       id = v_id;
       ignore_safety_checks = v_ignore_safety_checks;
       justification = v_justification;
       name = v_name;
       parent = v_parent;
       quota_id = v_quota_id;
       service = v_service;
       quota_config = v_quota_config;
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
         if Stdlib.( = ) [] v_quota_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_quota_config) v_quota_config
           in
           let bnd = "quota_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quota_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quota_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent", arg in
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
       let bnds =
         match v_justification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "justification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_safety_checks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ignore_safety_checks", arg in
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
         match v_dimensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "dimensions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_contact_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contact_email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloud_quotas_quota_preference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_quotas_quota_preference

[@@@deriving.end]

let quota_config ?annotations ~preferred_value () : quota_config =
  { annotations; preferred_value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_quotas_quota_preference ?contact_email ?dimensions
    ?id ?ignore_safety_checks ?justification ?name ?parent ?quota_id
    ?service ?timeouts ~quota_config () :
    google_cloud_quotas_quota_preference =
  {
    contact_email;
    dimensions;
    id;
    ignore_safety_checks;
    justification;
    name;
    parent;
    quota_id;
    service;
    quota_config;
    timeouts;
  }

type t = {
  tf_name : string;
  contact_email : string prop;
  create_time : string prop;
  dimensions : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  ignore_safety_checks : string prop;
  justification : string prop;
  name : string prop;
  parent : string prop;
  quota_id : string prop;
  reconciling : bool prop;
  service : string prop;
  update_time : string prop;
}

let make ?contact_email ?dimensions ?id ?ignore_safety_checks
    ?justification ?name ?parent ?quota_id ?service ?timeouts
    ~quota_config __id =
  let __type = "google_cloud_quotas_quota_preference" in
  let __attrs =
    ({
       tf_name = __id;
       contact_email = Prop.computed __type __id "contact_email";
       create_time = Prop.computed __type __id "create_time";
       dimensions = Prop.computed __type __id "dimensions";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       ignore_safety_checks =
         Prop.computed __type __id "ignore_safety_checks";
       justification = Prop.computed __type __id "justification";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       quota_id = Prop.computed __type __id "quota_id";
       reconciling = Prop.computed __type __id "reconciling";
       service = Prop.computed __type __id "service";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_quotas_quota_preference
        (google_cloud_quotas_quota_preference ?contact_email
           ?dimensions ?id ?ignore_safety_checks ?justification ?name
           ?parent ?quota_id ?service ?timeouts ~quota_config ());
    attrs = __attrs;
  }

let register ?tf_module ?contact_email ?dimensions ?id
    ?ignore_safety_checks ?justification ?name ?parent ?quota_id
    ?service ?timeouts ~quota_config __id =
  let (r : _ Tf_core.resource) =
    make ?contact_email ?dimensions ?id ?ignore_safety_checks
      ?justification ?name ?parent ?quota_id ?service ?timeouts
      ~quota_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
