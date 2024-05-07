(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_configuration = { log_group_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration) -> ()

let yojson_of_logging_configuration =
  (function
   | { log_group_arn = v_log_group_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_group_arn in
         ("log_group_arn", arg) :: bnds
       in
       `Assoc bnds
    : logging_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration

[@@@deriving.end]

type aws_prometheus_workspace = {
  alias : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  logging_configuration : logging_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_prometheus_workspace) -> ()

let yojson_of_aws_prometheus_workspace =
  (function
   | {
       alias = v_alias;
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       logging_configuration = v_logging_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_configuration
             v_logging_configuration
         in
         ("logging_configuration", arg) :: bnds
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
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
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
         match v_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alias", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_prometheus_workspace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_prometheus_workspace

[@@@deriving.end]

let logging_configuration ~log_group_arn () : logging_configuration =
  { log_group_arn }

let aws_prometheus_workspace ?alias ?id ?kms_key_arn ?tags ?tags_all
    ?(logging_configuration = []) () : aws_prometheus_workspace =
  { alias; id; kms_key_arn; tags; tags_all; logging_configuration }

type t = {
  tf_name : string;
  alias : string prop;
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  prometheus_endpoint : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?alias ?id ?kms_key_arn ?tags ?tags_all
    ?(logging_configuration = []) __id =
  let __type = "aws_prometheus_workspace" in
  let __attrs =
    ({
       tf_name = __id;
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       prometheus_endpoint =
         Prop.computed __type __id "prometheus_endpoint";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_prometheus_workspace
        (aws_prometheus_workspace ?alias ?id ?kms_key_arn ?tags
           ?tags_all ~logging_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?alias ?id ?kms_key_arn ?tags ?tags_all
    ?(logging_configuration = []) __id =
  let (r : _ Tf_core.resource) =
    make ?alias ?id ?kms_key_arn ?tags ?tags_all
      ~logging_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
