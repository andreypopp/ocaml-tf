(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type distribution__launch_template_configuration = {
  account_id : string prop;
  default : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_default in
         ("default", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : distribution__launch_template_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_distribution__launch_template_configuration

[@@@deriving.end]

type distribution__fast_launch_configuration__snapshot_configuration = {
  target_resource_count : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_target_resource_count
         in
         ("target_resource_count", arg) :: bnds
       in
       `Assoc bnds
    : distribution__fast_launch_configuration__snapshot_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_distribution__fast_launch_configuration__snapshot_configuration

[@@@deriving.end]

type distribution__fast_launch_configuration__launch_template = {
  launch_template_id : string prop;
  launch_template_name : string prop;
  launch_template_version : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_launch_template_version
         in
         ("launch_template_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_launch_template_name
         in
         ("launch_template_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_launch_template_id
         in
         ("launch_template_id", arg) :: bnds
       in
       `Assoc bnds
    : distribution__fast_launch_configuration__launch_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_distribution__fast_launch_configuration__launch_template

[@@@deriving.end]

type distribution__fast_launch_configuration = {
  account_id : string prop;
  enabled : bool prop;
  launch_template :
    distribution__fast_launch_configuration__launch_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_parallel_launches : float prop;
  snapshot_configuration :
    distribution__fast_launch_configuration__snapshot_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : distribution__fast_launch_configuration) -> ()

let yojson_of_distribution__fast_launch_configuration =
  (function
   | {
       account_id = v_account_id;
       enabled = v_enabled;
       launch_template = v_launch_template;
       max_parallel_launches = v_max_parallel_launches;
       snapshot_configuration = v_snapshot_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_snapshot_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_distribution__fast_launch_configuration__snapshot_configuration)
               v_snapshot_configuration
           in
           let bnd = "snapshot_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_parallel_launches
         in
         ("max_parallel_launches", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_template then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_distribution__fast_launch_configuration__launch_template)
               v_launch_template
           in
           let bnd = "launch_template", arg in
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
  container_tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop;
  target_repository :
    distribution__container_distribution_configuration__target_repository
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_target_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_distribution__container_distribution_configuration__target_repository)
               v_target_repository
           in
           let bnd = "target_repository", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container_tags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_container_tags
           in
           let bnd = "container_tags", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : distribution__container_distribution_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_distribution__container_distribution_configuration

[@@@deriving.end]

type distribution__ami_distribution_configuration__launch_permission = {
  organization_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  organizational_unit_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_user_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_user_ids
           in
           let bnd = "user_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_user_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_user_groups
           in
           let bnd = "user_groups", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_organizational_unit_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_organizational_unit_arns
           in
           let bnd = "organizational_unit_arns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_organization_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_organization_arns
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
  ami_tags : (string * string prop) list;
  description : string prop;
  kms_key_id : string prop;
  launch_permission :
    distribution__ami_distribution_configuration__launch_permission
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  target_account_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : distribution__ami_distribution_configuration) -> ()

let yojson_of_distribution__ami_distribution_configuration =
  (function
   | {
       ami_tags = v_ami_tags;
       description = v_description;
       kms_key_id = v_kms_key_id;
       launch_permission = v_launch_permission;
       name = v_name;
       target_account_ids = v_target_account_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_account_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_target_account_ids
           in
           let bnd = "target_account_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_permission then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_distribution__ami_distribution_configuration__launch_permission)
               v_launch_permission
           in
           let bnd = "launch_permission", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_ami_tags
         in
         ("ami_tags", arg) :: bnds
       in
       `Assoc bnds
    : distribution__ami_distribution_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_distribution__ami_distribution_configuration

[@@@deriving.end]

type distribution = {
  ami_distribution_configuration :
    distribution__ami_distribution_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  container_distribution_configuration :
    distribution__container_distribution_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fast_launch_configuration :
    distribution__fast_launch_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_template_configuration :
    distribution__launch_template_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  license_configuration_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : distribution) -> ()

let yojson_of_distribution =
  (function
   | {
       ami_distribution_configuration =
         v_ami_distribution_configuration;
       container_distribution_configuration =
         v_container_distribution_configuration;
       fast_launch_configuration = v_fast_launch_configuration;
       launch_template_configuration =
         v_launch_template_configuration;
       license_configuration_arns = v_license_configuration_arns;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_license_configuration_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_license_configuration_arns
           in
           let bnd = "license_configuration_arns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_template_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_distribution__launch_template_configuration)
               v_launch_template_configuration
           in
           let bnd = "launch_template_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fast_launch_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_distribution__fast_launch_configuration)
               v_fast_launch_configuration
           in
           let bnd = "fast_launch_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container_distribution_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_distribution__container_distribution_configuration)
               v_container_distribution_configuration
           in
           let bnd = "container_distribution_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ami_distribution_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_distribution__ami_distribution_configuration)
               v_ami_distribution_configuration
           in
           let bnd = "ami_distribution_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : distribution -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_distribution

[@@@deriving.end]

type aws_imagebuilder_distribution_configuration = {
  arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_distribution_configuration) -> ()

let yojson_of_aws_imagebuilder_distribution_configuration =
  (function
   | { arn = v_arn; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_distribution_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_distribution_configuration

[@@@deriving.end]

let aws_imagebuilder_distribution_configuration ?id ?tags ~arn () :
    aws_imagebuilder_distribution_configuration =
  { arn; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  distribution : distribution list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_imagebuilder_distribution_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       date_created = Prop.computed __type __id "date_created";
       date_updated = Prop.computed __type __id "date_updated";
       description = Prop.computed __type __id "description";
       distribution = Prop.computed __type __id "distribution";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_distribution_configuration
        (aws_imagebuilder_distribution_configuration ?id ?tags ~arn
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
