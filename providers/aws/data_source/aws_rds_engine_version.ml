(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_rds_engine_version = {
  default_only : bool prop option; [@option]
  engine : string prop;
  has_major_target : bool prop option; [@option]
  has_minor_target : bool prop option; [@option]
  id : string prop option; [@option]
  include_all : bool prop option; [@option]
  latest : bool prop option; [@option]
  parameter_group_family : string prop option; [@option]
  preferred_major_targets : string prop list option; [@option]
  preferred_upgrade_targets : string prop list option; [@option]
  preferred_versions : string prop list option; [@option]
  version : string prop option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_engine_version) -> ()

let yojson_of_aws_rds_engine_version =
  (function
   | {
       default_only = v_default_only;
       engine = v_engine;
       has_major_target = v_has_major_target;
       has_minor_target = v_has_minor_target;
       id = v_id;
       include_all = v_include_all;
       latest = v_latest;
       parameter_group_family = v_parameter_group_family;
       preferred_major_targets = v_preferred_major_targets;
       preferred_upgrade_targets = v_preferred_upgrade_targets;
       preferred_versions = v_preferred_versions;
       version = v_version;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
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
         match v_preferred_upgrade_targets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_upgrade_targets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_major_targets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_major_targets", arg in
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
         match v_latest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "latest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_all", arg in
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
         match v_has_minor_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "has_minor_target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_has_major_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "has_major_target", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine in
         ("engine", arg) :: bnds
       in
       let bnds =
         match v_default_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rds_engine_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_engine_version

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_rds_engine_version ?default_only ?has_major_target
    ?has_minor_target ?id ?include_all ?latest
    ?parameter_group_family ?preferred_major_targets
    ?preferred_upgrade_targets ?preferred_versions ?version ~engine
    ~filter () : aws_rds_engine_version =
  {
    default_only;
    engine;
    has_major_target;
    has_minor_target;
    id;
    include_all;
    latest;
    parameter_group_family;
    preferred_major_targets;
    preferred_upgrade_targets;
    preferred_versions;
    version;
    filter;
  }

type t = {
  tf_name : string;
  default_character_set : string prop;
  default_only : bool prop;
  engine : string prop;
  engine_description : string prop;
  exportable_log_types : string list prop;
  has_major_target : bool prop;
  has_minor_target : bool prop;
  id : string prop;
  include_all : bool prop;
  latest : bool prop;
  parameter_group_family : string prop;
  preferred_major_targets : string list prop;
  preferred_upgrade_targets : string list prop;
  preferred_versions : string list prop;
  status : string prop;
  supported_character_sets : string list prop;
  supported_feature_names : string list prop;
  supported_modes : string list prop;
  supported_timezones : string list prop;
  supports_global_databases : bool prop;
  supports_limitless_database : bool prop;
  supports_log_exports_to_cloudwatch : bool prop;
  supports_parallel_query : bool prop;
  supports_read_replica : bool prop;
  valid_major_targets : string list prop;
  valid_minor_targets : string list prop;
  valid_upgrade_targets : string list prop;
  version : string prop;
  version_actual : string prop;
  version_description : string prop;
}

let make ?default_only ?has_major_target ?has_minor_target ?id
    ?include_all ?latest ?parameter_group_family
    ?preferred_major_targets ?preferred_upgrade_targets
    ?preferred_versions ?version ~engine ~filter __id =
  let __type = "aws_rds_engine_version" in
  let __attrs =
    ({
       tf_name = __id;
       default_character_set =
         Prop.computed __type __id "default_character_set";
       default_only = Prop.computed __type __id "default_only";
       engine = Prop.computed __type __id "engine";
       engine_description =
         Prop.computed __type __id "engine_description";
       exportable_log_types =
         Prop.computed __type __id "exportable_log_types";
       has_major_target =
         Prop.computed __type __id "has_major_target";
       has_minor_target =
         Prop.computed __type __id "has_minor_target";
       id = Prop.computed __type __id "id";
       include_all = Prop.computed __type __id "include_all";
       latest = Prop.computed __type __id "latest";
       parameter_group_family =
         Prop.computed __type __id "parameter_group_family";
       preferred_major_targets =
         Prop.computed __type __id "preferred_major_targets";
       preferred_upgrade_targets =
         Prop.computed __type __id "preferred_upgrade_targets";
       preferred_versions =
         Prop.computed __type __id "preferred_versions";
       status = Prop.computed __type __id "status";
       supported_character_sets =
         Prop.computed __type __id "supported_character_sets";
       supported_feature_names =
         Prop.computed __type __id "supported_feature_names";
       supported_modes = Prop.computed __type __id "supported_modes";
       supported_timezones =
         Prop.computed __type __id "supported_timezones";
       supports_global_databases =
         Prop.computed __type __id "supports_global_databases";
       supports_limitless_database =
         Prop.computed __type __id "supports_limitless_database";
       supports_log_exports_to_cloudwatch =
         Prop.computed __type __id
           "supports_log_exports_to_cloudwatch";
       supports_parallel_query =
         Prop.computed __type __id "supports_parallel_query";
       supports_read_replica =
         Prop.computed __type __id "supports_read_replica";
       valid_major_targets =
         Prop.computed __type __id "valid_major_targets";
       valid_minor_targets =
         Prop.computed __type __id "valid_minor_targets";
       valid_upgrade_targets =
         Prop.computed __type __id "valid_upgrade_targets";
       version = Prop.computed __type __id "version";
       version_actual = Prop.computed __type __id "version_actual";
       version_description =
         Prop.computed __type __id "version_description";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_engine_version
        (aws_rds_engine_version ?default_only ?has_major_target
           ?has_minor_target ?id ?include_all ?latest
           ?parameter_group_family ?preferred_major_targets
           ?preferred_upgrade_targets ?preferred_versions ?version
           ~engine ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?default_only ?has_major_target
    ?has_minor_target ?id ?include_all ?latest
    ?parameter_group_family ?preferred_major_targets
    ?preferred_upgrade_targets ?preferred_versions ?version ~engine
    ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?default_only ?has_major_target ?has_minor_target ?id
      ?include_all ?latest ?parameter_group_family
      ?preferred_major_targets ?preferred_upgrade_targets
      ?preferred_versions ?version ~engine ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
