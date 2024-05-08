(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_configuration = {
  include_execution_data : bool prop option; [@option]
  level : string prop option; [@option]
  log_destination : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration) -> ()

let yojson_of_logging_configuration =
  (function
   | {
       include_execution_data = v_include_execution_data;
       level = v_level;
       log_destination = v_log_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_destination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_destination", arg in
             bnd :: bnds
       in
       let bnds =
         match v_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_execution_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_execution_data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration

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

type tracing_configuration = { enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : tracing_configuration) -> ()

let yojson_of_tracing_configuration =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tracing_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tracing_configuration

[@@@deriving.end]

type aws_sfn_state_machine = {
  definition : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  publish : bool prop option; [@option]
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  logging_configuration : logging_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  tracing_configuration : tracing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sfn_state_machine) -> ()

let yojson_of_aws_sfn_state_machine =
  (function
   | {
       definition = v_definition;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       publish = v_publish;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       logging_configuration = v_logging_configuration;
       timeouts = v_timeouts;
       tracing_configuration = v_tracing_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tracing_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tracing_configuration)
               v_tracing_configuration
           in
           let bnd = "tracing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logging_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logging_configuration)
               v_logging_configuration
           in
           let bnd = "logging_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_publish with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publish", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_definition in
         ("definition", arg) :: bnds
       in
       `Assoc bnds
    : aws_sfn_state_machine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sfn_state_machine

[@@@deriving.end]

let logging_configuration ?include_execution_data ?level
    ?log_destination () : logging_configuration =
  { include_execution_data; level; log_destination }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let tracing_configuration ?enabled () : tracing_configuration =
  { enabled }

let aws_sfn_state_machine ?id ?name ?name_prefix ?publish ?tags
    ?tags_all ?type_ ?(logging_configuration = []) ?timeouts
    ?(tracing_configuration = []) ~definition ~role_arn () :
    aws_sfn_state_machine =
  {
    definition;
    id;
    name;
    name_prefix;
    publish;
    role_arn;
    tags;
    tags_all;
    type_;
    logging_configuration;
    timeouts;
    tracing_configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  creation_date : string prop;
  definition : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  publish : bool prop;
  revision_id : string prop;
  role_arn : string prop;
  state_machine_version_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  version_description : string prop;
}

let make ?id ?name ?name_prefix ?publish ?tags ?tags_all ?type_
    ?(logging_configuration = []) ?timeouts
    ?(tracing_configuration = []) ~definition ~role_arn __id =
  let __type = "aws_sfn_state_machine" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       creation_date = Prop.computed __type __id "creation_date";
       definition = Prop.computed __type __id "definition";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       publish = Prop.computed __type __id "publish";
       revision_id = Prop.computed __type __id "revision_id";
       role_arn = Prop.computed __type __id "role_arn";
       state_machine_version_arn =
         Prop.computed __type __id "state_machine_version_arn";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       version_description =
         Prop.computed __type __id "version_description";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sfn_state_machine
        (aws_sfn_state_machine ?id ?name ?name_prefix ?publish ?tags
           ?tags_all ?type_ ~logging_configuration ?timeouts
           ~tracing_configuration ~definition ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ?publish ?tags
    ?tags_all ?type_ ?(logging_configuration = []) ?timeouts
    ?(tracing_configuration = []) ~definition ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?publish ?tags ?tags_all ?type_
      ~logging_configuration ?timeouts ~tracing_configuration
      ~definition ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
