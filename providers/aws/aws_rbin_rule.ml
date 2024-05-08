(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type lock_configuration__unlock_delay = {
  unlock_delay_unit : string prop;
  unlock_delay_value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lock_configuration__unlock_delay) -> ()

let yojson_of_lock_configuration__unlock_delay =
  (function
   | {
       unlock_delay_unit = v_unlock_delay_unit;
       unlock_delay_value = v_unlock_delay_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_unlock_delay_value
         in
         ("unlock_delay_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_unlock_delay_unit
         in
         ("unlock_delay_unit", arg) :: bnds
       in
       `Assoc bnds
    : lock_configuration__unlock_delay ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lock_configuration__unlock_delay

[@@@deriving.end]

type lock_configuration = {
  unlock_delay : lock_configuration__unlock_delay list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lock_configuration) -> ()

let yojson_of_lock_configuration =
  (function
   | { unlock_delay = v_unlock_delay } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unlock_delay then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_lock_configuration__unlock_delay)
               v_unlock_delay
           in
           let bnd = "unlock_delay", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : lock_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lock_configuration

[@@@deriving.end]

type resource_tags = {
  resource_tag_key : string prop;
  resource_tag_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_tags) -> ()

let yojson_of_resource_tags =
  (function
   | {
       resource_tag_key = v_resource_tag_key;
       resource_tag_value = v_resource_tag_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_tag_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_tag_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_tag_key
         in
         ("resource_tag_key", arg) :: bnds
       in
       `Assoc bnds
    : resource_tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_tags

[@@@deriving.end]

type retention_period = {
  retention_period_unit : string prop;
  retention_period_value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_period) -> ()

let yojson_of_retention_period =
  (function
   | {
       retention_period_unit = v_retention_period_unit;
       retention_period_value = v_retention_period_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_period_value
         in
         ("retention_period_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_retention_period_unit
         in
         ("retention_period_unit", arg) :: bnds
       in
       `Assoc bnds
    : retention_period -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_period

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

type aws_rbin_rule = {
  description : string prop option; [@option]
  resource_type : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  lock_configuration : lock_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  resource_tags : resource_tags list;
      [@default []] [@yojson_drop_default ( = )]
  retention_period : retention_period list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rbin_rule) -> ()

let yojson_of_aws_rbin_rule =
  (function
   | {
       description = v_description;
       resource_type = v_resource_type;
       tags = v_tags;
       tags_all = v_tags_all;
       lock_configuration = v_lock_configuration;
       resource_tags = v_resource_tags;
       retention_period = v_retention_period;
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
         if [] = v_retention_period then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_period)
               v_retention_period
           in
           let bnd = "retention_period", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resource_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resource_tags) v_resource_tags
           in
           let bnd = "resource_tags", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lock_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lock_configuration)
               v_lock_configuration
           in
           let bnd = "lock_configuration", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rbin_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rbin_rule

[@@@deriving.end]

let lock_configuration__unlock_delay ~unlock_delay_unit
    ~unlock_delay_value () : lock_configuration__unlock_delay =
  { unlock_delay_unit; unlock_delay_value }

let lock_configuration ~unlock_delay () : lock_configuration =
  { unlock_delay }

let resource_tags ?resource_tag_value ~resource_tag_key () :
    resource_tags =
  { resource_tag_key; resource_tag_value }

let retention_period ~retention_period_unit ~retention_period_value
    () : retention_period =
  { retention_period_unit; retention_period_value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_rbin_rule ?description ?tags ?tags_all
    ?(lock_configuration = []) ?timeouts ~resource_type
    ~resource_tags ~retention_period () : aws_rbin_rule =
  {
    description;
    resource_type;
    tags;
    tags_all;
    lock_configuration;
    resource_tags;
    retention_period;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  lock_end_time : string prop;
  lock_state : string prop;
  resource_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?tags ?tags_all ?(lock_configuration = [])
    ?timeouts ~resource_type ~resource_tags ~retention_period __id =
  let __type = "aws_rbin_rule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lock_end_time = Prop.computed __type __id "lock_end_time";
       lock_state = Prop.computed __type __id "lock_state";
       resource_type = Prop.computed __type __id "resource_type";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rbin_rule
        (aws_rbin_rule ?description ?tags ?tags_all
           ~lock_configuration ?timeouts ~resource_type
           ~resource_tags ~retention_period ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags ?tags_all
    ?(lock_configuration = []) ?timeouts ~resource_type
    ~resource_tags ~retention_period __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ?tags_all ~lock_configuration ?timeouts
      ~resource_type ~resource_tags ~retention_period __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
