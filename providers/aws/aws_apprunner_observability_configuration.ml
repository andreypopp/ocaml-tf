(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type trace_configuration = { vendor : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : trace_configuration) -> ()

let yojson_of_trace_configuration =
  (function
   | { vendor = v_vendor } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vendor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vendor", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trace_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trace_configuration

[@@@deriving.end]

type aws_apprunner_observability_configuration = {
  id : string prop option; [@option]
  observability_configuration_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  trace_configuration : trace_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apprunner_observability_configuration) -> ()

let yojson_of_aws_apprunner_observability_configuration =
  (function
   | {
       id = v_id;
       observability_configuration_name =
         v_observability_configuration_name;
       tags = v_tags;
       tags_all = v_tags_all;
       trace_configuration = v_trace_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_trace_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trace_configuration)
               v_trace_configuration
           in
           let bnd = "trace_configuration", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_observability_configuration_name
         in
         ("observability_configuration_name", arg) :: bnds
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
    : aws_apprunner_observability_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apprunner_observability_configuration

[@@@deriving.end]

let trace_configuration ?vendor () : trace_configuration = { vendor }

let aws_apprunner_observability_configuration ?id ?tags ?tags_all
    ?(trace_configuration = []) ~observability_configuration_name ()
    : aws_apprunner_observability_configuration =
  {
    id;
    observability_configuration_name;
    tags;
    tags_all;
    trace_configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  latest : bool prop;
  observability_configuration_name : string prop;
  observability_configuration_revision : float prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(trace_configuration = [])
    ~observability_configuration_name __id =
  let __type = "aws_apprunner_observability_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       latest = Prop.computed __type __id "latest";
       observability_configuration_name =
         Prop.computed __type __id "observability_configuration_name";
       observability_configuration_revision =
         Prop.computed __type __id
           "observability_configuration_revision";
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
      yojson_of_aws_apprunner_observability_configuration
        (aws_apprunner_observability_configuration ?id ?tags
           ?tags_all ~trace_configuration
           ~observability_configuration_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(trace_configuration = []) ~observability_configuration_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~trace_configuration
      ~observability_configuration_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
