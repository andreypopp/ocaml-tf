(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type buffer_options = { persistent_buffer_enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : buffer_options) -> ()

let yojson_of_buffer_options =
  (function
   | { persistent_buffer_enabled = v_persistent_buffer_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_persistent_buffer_enabled
         in
         ("persistent_buffer_enabled", arg) :: bnds
       in
       `Assoc bnds
    : buffer_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_buffer_options

[@@@deriving.end]

type encryption_at_rest_options = { kms_key_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_at_rest_options) -> ()

let yojson_of_encryption_at_rest_options =
  (function
   | { kms_key_arn = v_kms_key_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_arn in
         ("kms_key_arn", arg) :: bnds
       in
       `Assoc bnds
    : encryption_at_rest_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_at_rest_options

[@@@deriving.end]

type log_publishing_options__cloudwatch_log_destination = {
  log_group : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : log_publishing_options__cloudwatch_log_destination) -> ()

let yojson_of_log_publishing_options__cloudwatch_log_destination =
  (function
   | { log_group = v_log_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_group in
         ("log_group", arg) :: bnds
       in
       `Assoc bnds
    : log_publishing_options__cloudwatch_log_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_publishing_options__cloudwatch_log_destination

[@@@deriving.end]

type log_publishing_options = {
  is_logging_enabled : bool prop option; [@option]
  cloudwatch_log_destination :
    log_publishing_options__cloudwatch_log_destination list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_publishing_options) -> ()

let yojson_of_log_publishing_options =
  (function
   | {
       is_logging_enabled = v_is_logging_enabled;
       cloudwatch_log_destination = v_cloudwatch_log_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_cloudwatch_log_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_log_publishing_options__cloudwatch_log_destination)
               v_cloudwatch_log_destination
           in
           let bnd = "cloudwatch_log_destination", arg in
           bnd :: bnds
       in
       let bnds =
         match v_is_logging_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_logging_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : log_publishing_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_publishing_options

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

type vpc_options = {
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_options) -> ()

let yojson_of_vpc_options =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpc_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_options

[@@@deriving.end]

type aws_osis_pipeline = {
  max_units : float prop;
  min_units : float prop;
  pipeline_configuration_body : string prop;
  pipeline_name : string prop;
  tags : (string * string prop) list option; [@option]
  buffer_options : buffer_options list;
      [@default []] [@yojson_drop_default ( = )]
  encryption_at_rest_options : encryption_at_rest_options list;
      [@default []] [@yojson_drop_default ( = )]
  log_publishing_options : log_publishing_options list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  vpc_options : vpc_options list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_osis_pipeline) -> ()

let yojson_of_aws_osis_pipeline =
  (function
   | {
       max_units = v_max_units;
       min_units = v_min_units;
       pipeline_configuration_body = v_pipeline_configuration_body;
       pipeline_name = v_pipeline_name;
       tags = v_tags;
       buffer_options = v_buffer_options;
       encryption_at_rest_options = v_encryption_at_rest_options;
       log_publishing_options = v_log_publishing_options;
       timeouts = v_timeouts;
       vpc_options = v_vpc_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_vpc_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_options) v_vpc_options
           in
           let bnd = "vpc_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_log_publishing_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log_publishing_options)
               v_log_publishing_options
           in
           let bnd = "log_publishing_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_encryption_at_rest_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_at_rest_options)
               v_encryption_at_rest_options
           in
           let bnd = "encryption_at_rest_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_buffer_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_buffer_options)
               v_buffer_options
           in
           let bnd = "buffer_options", arg in
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
         let arg = yojson_of_prop yojson_of_string v_pipeline_name in
         ("pipeline_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_pipeline_configuration_body
         in
         ("pipeline_configuration_body", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_units in
         ("min_units", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_units in
         ("max_units", arg) :: bnds
       in
       `Assoc bnds
    : aws_osis_pipeline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_osis_pipeline

[@@@deriving.end]

let buffer_options ~persistent_buffer_enabled () : buffer_options =
  { persistent_buffer_enabled }

let encryption_at_rest_options ~kms_key_arn () :
    encryption_at_rest_options =
  { kms_key_arn }

let log_publishing_options__cloudwatch_log_destination ~log_group ()
    : log_publishing_options__cloudwatch_log_destination =
  { log_group }

let log_publishing_options ?is_logging_enabled
    ?(cloudwatch_log_destination = []) () : log_publishing_options =
  { is_logging_enabled; cloudwatch_log_destination }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_options ?security_group_ids ~subnet_ids () : vpc_options =
  { security_group_ids; subnet_ids }

let aws_osis_pipeline ?tags ?(buffer_options = [])
    ?(encryption_at_rest_options = []) ?(log_publishing_options = [])
    ?timeouts ?(vpc_options = []) ~max_units ~min_units
    ~pipeline_configuration_body ~pipeline_name () :
    aws_osis_pipeline =
  {
    max_units;
    min_units;
    pipeline_configuration_body;
    pipeline_name;
    tags;
    buffer_options;
    encryption_at_rest_options;
    log_publishing_options;
    timeouts;
    vpc_options;
  }

type t = {
  tf_name : string;
  id : string prop;
  ingest_endpoint_urls : string list prop;
  max_units : float prop;
  min_units : float prop;
  pipeline_arn : string prop;
  pipeline_configuration_body : string prop;
  pipeline_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?(buffer_options = [])
    ?(encryption_at_rest_options = []) ?(log_publishing_options = [])
    ?timeouts ?(vpc_options = []) ~max_units ~min_units
    ~pipeline_configuration_body ~pipeline_name __id =
  let __type = "aws_osis_pipeline" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ingest_endpoint_urls =
         Prop.computed __type __id "ingest_endpoint_urls";
       max_units = Prop.computed __type __id "max_units";
       min_units = Prop.computed __type __id "min_units";
       pipeline_arn = Prop.computed __type __id "pipeline_arn";
       pipeline_configuration_body =
         Prop.computed __type __id "pipeline_configuration_body";
       pipeline_name = Prop.computed __type __id "pipeline_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_osis_pipeline
        (aws_osis_pipeline ?tags ~buffer_options
           ~encryption_at_rest_options ~log_publishing_options
           ?timeouts ~vpc_options ~max_units ~min_units
           ~pipeline_configuration_body ~pipeline_name ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?(buffer_options = [])
    ?(encryption_at_rest_options = []) ?(log_publishing_options = [])
    ?timeouts ?(vpc_options = []) ~max_units ~min_units
    ~pipeline_configuration_body ~pipeline_name __id =
  let (r : _ Tf_core.resource) =
    make ?tags ~buffer_options ~encryption_at_rest_options
      ~log_publishing_options ?timeouts ~vpc_options ~max_units
      ~min_units ~pipeline_configuration_body ~pipeline_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
