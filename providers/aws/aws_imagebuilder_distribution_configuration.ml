(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type distribution__ami_distribution_configuration__launch_permission = {
  organization_arns : string prop list option; [@option]
  organizational_unit_arns : string prop list option; [@option]
  user_groups : string prop list option; [@option]
  user_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       distribution__ami_distribution_configuration__launch_permission) ->
  ()

let yojson_of_distribution__ami_distribution_configuration__launch_permission
    =
  (function
   | {
       organization_arns = v_organization_arns;
       organizational_unit_arns = v_organizational_unit_arns;
       user_groups = v_user_groups;
       user_ids = v_user_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organizational_unit_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "organizational_unit_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "organization_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : distribution__ami_distribution_configuration__launch_permission ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_distribution__ami_distribution_configuration__launch_permission

[@@@deriving.end]

type distribution__ami_distribution_configuration = {
  ami_tags : (string * string prop) list option; [@option]
  description : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  name : string prop option; [@option]
  target_account_ids : string prop list option; [@option]
  launch_permission :
    distribution__ami_distribution_configuration__launch_permission
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : distribution__ami_distribution_configuration) -> ()

let yojson_of_distribution__ami_distribution_configuration =
  (function
   | {
       ami_tags = v_ami_tags;
       description = v_description;
       kms_key_id = v_kms_key_id;
       name = v_name;
       target_account_ids = v_target_account_ids;
       launch_permission = v_launch_permission;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_distribution__ami_distribution_configuration__launch_permission
             v_launch_permission
         in
         ("launch_permission", arg) :: bnds
       in
       let bnds =
         match v_target_account_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_account_ids", arg in
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
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ami_tags with
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
             let bnd = "ami_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : distribution__ami_distribution_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_distribution__ami_distribution_configuration

[@@@deriving.end]

type distribution__container_distribution_configuration__target_repository = {
  repository_name : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       distribution__container_distribution_configuration__target_repository) ->
  ()

let yojson_of_distribution__container_distribution_configuration__target_repository
    =
  (function
   | { repository_name = v_repository_name; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
       in
       `Assoc bnds
    : distribution__container_distribution_configuration__target_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_distribution__container_distribution_configuration__target_repository

[@@@deriving.end]

type distribution__container_distribution_configuration = {
  container_tags : string prop list option; [@option]
  description : string prop option; [@option]
  target_repository :
    distribution__container_distribution_configuration__target_repository
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : distribution__container_distribution_configuration) -> ()

let yojson_of_distribution__container_distribution_configuration =
  (function
   | {
       container_tags = v_container_tags;
       description = v_description;
       target_repository = v_target_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_distribution__container_distribution_configuration__target_repository
             v_target_repository
         in
         ("target_repository", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "container_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : distribution__container_distribution_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_distribution__container_distribution_configuration

[@@@deriving.end]

type distribution__fast_launch_configuration__launch_template = {
  launch_template_id : string prop option; [@option]
  launch_template_name : string prop option; [@option]
  launch_template_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : distribution__fast_launch_configuration__launch_template) ->
  ()

let yojson_of_distribution__fast_launch_configuration__launch_template
    =
  (function
   | {
       launch_template_id = v_launch_template_id;
       launch_template_name = v_launch_template_name;
       launch_template_version = v_launch_template_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_launch_template_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_template_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launch_template_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_template_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launch_template_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_template_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : distribution__fast_launch_configuration__launch_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_distribution__fast_launch_configuration__launch_template

[@@@deriving.end]

type distribution__fast_launch_configuration__snapshot_configuration = {
  target_resource_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       distribution__fast_launch_configuration__snapshot_configuration) ->
  ()

let yojson_of_distribution__fast_launch_configuration__snapshot_configuration
    =
  (function
   | { target_resource_count = v_target_resource_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_resource_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_resource_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : distribution__fast_launch_configuration__snapshot_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_distribution__fast_launch_configuration__snapshot_configuration

[@@@deriving.end]

type distribution__fast_launch_configuration = {
  account_id : string prop;
  enabled : bool prop;
  max_parallel_launches : float prop option; [@option]
  launch_template :
    distribution__fast_launch_configuration__launch_template list;
  snapshot_configuration :
    distribution__fast_launch_configuration__snapshot_configuration
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : distribution__fast_launch_configuration) -> ()

let yojson_of_distribution__fast_launch_configuration =
  (function
   | {
       account_id = v_account_id;
       enabled = v_enabled;
       max_parallel_launches = v_max_parallel_launches;
       launch_template = v_launch_template;
       snapshot_configuration = v_snapshot_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_distribution__fast_launch_configuration__snapshot_configuration
             v_snapshot_configuration
         in
         ("snapshot_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_distribution__fast_launch_configuration__launch_template
             v_launch_template
         in
         ("launch_template", arg) :: bnds
       in
       let bnds =
         match v_max_parallel_launches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_parallel_launches", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : distribution__fast_launch_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_distribution__fast_launch_configuration

[@@@deriving.end]

type distribution__launch_template_configuration = {
  account_id : string prop option; [@option]
  default : bool prop option; [@option]
  launch_template_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : distribution__launch_template_configuration) -> ()

let yojson_of_distribution__launch_template_configuration =
  (function
   | {
       account_id = v_account_id;
       default = v_default;
       launch_template_id = v_launch_template_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_launch_template_id
         in
         ("launch_template_id", arg) :: bnds
       in
       let bnds =
         match v_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : distribution__launch_template_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_distribution__launch_template_configuration

[@@@deriving.end]

type distribution = {
  license_configuration_arns : string prop list option; [@option]
  region : string prop;
  ami_distribution_configuration :
    distribution__ami_distribution_configuration list;
  container_distribution_configuration :
    distribution__container_distribution_configuration list;
  fast_launch_configuration :
    distribution__fast_launch_configuration list;
  launch_template_configuration :
    distribution__launch_template_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : distribution) -> ()

let yojson_of_distribution =
  (function
   | {
       license_configuration_arns = v_license_configuration_arns;
       region = v_region;
       ami_distribution_configuration =
         v_ami_distribution_configuration;
       container_distribution_configuration =
         v_container_distribution_configuration;
       fast_launch_configuration = v_fast_launch_configuration;
       launch_template_configuration =
         v_launch_template_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_distribution__launch_template_configuration
             v_launch_template_configuration
         in
         ("launch_template_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_distribution__fast_launch_configuration
             v_fast_launch_configuration
         in
         ("fast_launch_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_distribution__container_distribution_configuration
             v_container_distribution_configuration
         in
         ("container_distribution_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_distribution__ami_distribution_configuration
             v_ami_distribution_configuration
         in
         ("ami_distribution_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_license_configuration_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "license_configuration_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : distribution -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_distribution

[@@@deriving.end]

type aws_imagebuilder_distribution_configuration = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  distribution : distribution list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_distribution_configuration) -> ()

let yojson_of_aws_imagebuilder_distribution_configuration =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       distribution = v_distribution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_distribution v_distribution
         in
         ("distribution", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_distribution_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_distribution_configuration

[@@@deriving.end]

let distribution__ami_distribution_configuration__launch_permission
    ?organization_arns ?organizational_unit_arns ?user_groups
    ?user_ids () :
    distribution__ami_distribution_configuration__launch_permission =
  {
    organization_arns;
    organizational_unit_arns;
    user_groups;
    user_ids;
  }

let distribution__ami_distribution_configuration ?ami_tags
    ?description ?kms_key_id ?name ?target_account_ids
    ~launch_permission () :
    distribution__ami_distribution_configuration =
  {
    ami_tags;
    description;
    kms_key_id;
    name;
    target_account_ids;
    launch_permission;
  }

let distribution__container_distribution_configuration__target_repository
    ~repository_name ~service () :
    distribution__container_distribution_configuration__target_repository
    =
  { repository_name; service }

let distribution__container_distribution_configuration
    ?container_tags ?description ~target_repository () :
    distribution__container_distribution_configuration =
  { container_tags; description; target_repository }

let distribution__fast_launch_configuration__launch_template
    ?launch_template_id ?launch_template_name
    ?launch_template_version () :
    distribution__fast_launch_configuration__launch_template =
  {
    launch_template_id;
    launch_template_name;
    launch_template_version;
  }

let distribution__fast_launch_configuration__snapshot_configuration
    ?target_resource_count () :
    distribution__fast_launch_configuration__snapshot_configuration =
  { target_resource_count }

let distribution__fast_launch_configuration ?max_parallel_launches
    ~account_id ~enabled ~launch_template ~snapshot_configuration ()
    : distribution__fast_launch_configuration =
  {
    account_id;
    enabled;
    max_parallel_launches;
    launch_template;
    snapshot_configuration;
  }

let distribution__launch_template_configuration ?account_id ?default
    ~launch_template_id () :
    distribution__launch_template_configuration =
  { account_id; default; launch_template_id }

let distribution ?license_configuration_arns ~region
    ~ami_distribution_configuration
    ~container_distribution_configuration ~fast_launch_configuration
    ~launch_template_configuration () : distribution =
  {
    license_configuration_arns;
    region;
    ami_distribution_configuration;
    container_distribution_configuration;
    fast_launch_configuration;
    launch_template_configuration;
  }

let aws_imagebuilder_distribution_configuration ?description ?id
    ?tags ?tags_all ~name ~distribution () :
    aws_imagebuilder_distribution_configuration =
  { description; id; name; tags; tags_all; distribution }

type t = {
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~distribution __id =
  let __type = "aws_imagebuilder_distribution_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       date_created = Prop.computed __type __id "date_created";
       date_updated = Prop.computed __type __id "date_updated";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_distribution_configuration
        (aws_imagebuilder_distribution_configuration ?description ?id
           ?tags ?tags_all ~name ~distribution ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~distribution __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~distribution __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
