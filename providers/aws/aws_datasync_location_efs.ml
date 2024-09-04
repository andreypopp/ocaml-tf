(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ec2_config = {
  security_group_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ec2_config) -> ()

let yojson_of_ec2_config =
  (function
   | {
       security_group_arns = v_security_group_arns;
       subnet_arn = v_subnet_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_arn in
         ("subnet_arn", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_arns
           in
           let bnd = "security_group_arns", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : ec2_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ec2_config

[@@@deriving.end]

type aws_datasync_location_efs = {
  access_point_arn : string prop option; [@option]
  efs_file_system_arn : string prop;
  file_system_access_role_arn : string prop option; [@option]
  id : string prop option; [@option]
  in_transit_encryption : string prop option; [@option]
  subdirectory : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  ec2_config : ec2_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_efs) -> ()

let yojson_of_aws_datasync_location_efs =
  (function
   | {
       access_point_arn = v_access_point_arn;
       efs_file_system_arn = v_efs_file_system_arn;
       file_system_access_role_arn = v_file_system_access_role_arn;
       id = v_id;
       in_transit_encryption = v_in_transit_encryption;
       subdirectory = v_subdirectory;
       tags = v_tags;
       tags_all = v_tags_all;
       ec2_config = v_ec2_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ec2_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ec2_config) v_ec2_config
           in
           let bnd = "ec2_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subdirectory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subdirectory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_in_transit_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "in_transit_encryption", arg in
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
         match v_file_system_access_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_access_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_efs_file_system_arn
         in
         ("efs_file_system_arn", arg) :: bnds
       in
       let bnds =
         match v_access_point_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_point_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_datasync_location_efs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_efs

[@@@deriving.end]

let ec2_config ~security_group_arns ~subnet_arn () : ec2_config =
  { security_group_arns; subnet_arn }

let aws_datasync_location_efs ?access_point_arn
    ?file_system_access_role_arn ?id ?in_transit_encryption
    ?subdirectory ?tags ?tags_all ~efs_file_system_arn ~ec2_config ()
    : aws_datasync_location_efs =
  {
    access_point_arn;
    efs_file_system_arn;
    file_system_access_role_arn;
    id;
    in_transit_encryption;
    subdirectory;
    tags;
    tags_all;
    ec2_config;
  }

type t = {
  tf_name : string;
  access_point_arn : string prop;
  arn : string prop;
  efs_file_system_arn : string prop;
  file_system_access_role_arn : string prop;
  id : string prop;
  in_transit_encryption : string prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
}

let make ?access_point_arn ?file_system_access_role_arn ?id
    ?in_transit_encryption ?subdirectory ?tags ?tags_all
    ~efs_file_system_arn ~ec2_config __id =
  let __type = "aws_datasync_location_efs" in
  let __attrs =
    ({
       tf_name = __id;
       access_point_arn =
         Prop.computed __type __id "access_point_arn";
       arn = Prop.computed __type __id "arn";
       efs_file_system_arn =
         Prop.computed __type __id "efs_file_system_arn";
       file_system_access_role_arn =
         Prop.computed __type __id "file_system_access_role_arn";
       id = Prop.computed __type __id "id";
       in_transit_encryption =
         Prop.computed __type __id "in_transit_encryption";
       subdirectory = Prop.computed __type __id "subdirectory";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_location_efs
        (aws_datasync_location_efs ?access_point_arn
           ?file_system_access_role_arn ?id ?in_transit_encryption
           ?subdirectory ?tags ?tags_all ~efs_file_system_arn
           ~ec2_config ());
    attrs = __attrs;
  }

let register ?tf_module ?access_point_arn
    ?file_system_access_role_arn ?id ?in_transit_encryption
    ?subdirectory ?tags ?tags_all ~efs_file_system_arn ~ec2_config
    __id =
  let (r : _ Tf_core.resource) =
    make ?access_point_arn ?file_system_access_role_arn ?id
      ?in_transit_encryption ?subdirectory ?tags ?tags_all
      ~efs_file_system_arn ~ec2_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
