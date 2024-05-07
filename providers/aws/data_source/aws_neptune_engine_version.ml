(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_neptune_engine_version = {
  engine : string prop option; [@option]
  id : string prop option; [@option]
  parameter_group_family : string prop option; [@option]
  preferred_versions : string prop list option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_neptune_engine_version) -> ()

let yojson_of_aws_neptune_engine_version =
  (function
   | {
       engine = v_engine;
       id = v_id;
       parameter_group_family = v_parameter_group_family;
       preferred_versions = v_preferred_versions;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameter_group_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter_group_family", arg in
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
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_neptune_engine_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_neptune_engine_version

[@@@deriving.end]

let aws_neptune_engine_version ?engine ?id ?parameter_group_family
    ?preferred_versions ?version () : aws_neptune_engine_version =
  { engine; id; parameter_group_family; preferred_versions; version }

type t = {
  tf_name : string;
  engine : string prop;
  engine_description : string prop;
  exportable_log_types : string list prop;
  id : string prop;
  parameter_group_family : string prop;
  preferred_versions : string list prop;
  supported_timezones : string list prop;
  supports_log_exports_to_cloudwatch : bool prop;
  supports_read_replica : bool prop;
  valid_upgrade_targets : string list prop;
  version : string prop;
  version_description : string prop;
}

let make ?engine ?id ?parameter_group_family ?preferred_versions
    ?version __id =
  let __type = "aws_neptune_engine_version" in
  let __attrs =
    ({
       tf_name = __id;
       engine = Prop.computed __type __id "engine";
       engine_description =
         Prop.computed __type __id "engine_description";
       exportable_log_types =
         Prop.computed __type __id "exportable_log_types";
       id = Prop.computed __type __id "id";
       parameter_group_family =
         Prop.computed __type __id "parameter_group_family";
       preferred_versions =
         Prop.computed __type __id "preferred_versions";
       supported_timezones =
         Prop.computed __type __id "supported_timezones";
       supports_log_exports_to_cloudwatch =
         Prop.computed __type __id
           "supports_log_exports_to_cloudwatch";
       supports_read_replica =
         Prop.computed __type __id "supports_read_replica";
       valid_upgrade_targets =
         Prop.computed __type __id "valid_upgrade_targets";
       version = Prop.computed __type __id "version";
       version_description =
         Prop.computed __type __id "version_description";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_neptune_engine_version
        (aws_neptune_engine_version ?engine ?id
           ?parameter_group_family ?preferred_versions ?version ());
    attrs = __attrs;
  }

let register ?tf_module ?engine ?id ?parameter_group_family
    ?preferred_versions ?version __id =
  let (r : _ Tf_core.resource) =
    make ?engine ?id ?parameter_group_family ?preferred_versions
      ?version __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
