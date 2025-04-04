(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_datasync_location_fsx_lustre_file_system = {
  fsx_filesystem_arn : string prop;
  id : string prop option; [@option]
  security_group_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subdirectory : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_fsx_lustre_file_system) -> ()

let yojson_of_aws_datasync_location_fsx_lustre_file_system =
  (function
   | {
       fsx_filesystem_arn = v_fsx_filesystem_arn;
       id = v_id;
       security_group_arns = v_security_group_arns;
       subdirectory = v_subdirectory;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         if Stdlib.( = ) [] v_security_group_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_arns
           in
           let bnd = "security_group_arns", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_fsx_filesystem_arn
         in
         ("fsx_filesystem_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_datasync_location_fsx_lustre_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_fsx_lustre_file_system

[@@@deriving.end]

let aws_datasync_location_fsx_lustre_file_system ?id ?subdirectory
    ?tags ?tags_all ~fsx_filesystem_arn ~security_group_arns () :
    aws_datasync_location_fsx_lustre_file_system =
  {
    fsx_filesystem_arn;
    id;
    security_group_arns;
    subdirectory;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  security_group_arns : string list prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
}

let make ?id ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn
    ~security_group_arns __id =
  let __type = "aws_datasync_location_fsx_lustre_file_system" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       fsx_filesystem_arn =
         Prop.computed __type __id "fsx_filesystem_arn";
       id = Prop.computed __type __id "id";
       security_group_arns =
         Prop.computed __type __id "security_group_arns";
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
      yojson_of_aws_datasync_location_fsx_lustre_file_system
        (aws_datasync_location_fsx_lustre_file_system ?id
           ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn
           ~security_group_arns ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subdirectory ?tags ?tags_all
    ~fsx_filesystem_arn ~security_group_arns __id =
  let (r : _ Tf_core.resource) =
    make ?id ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn
      ~security_group_arns __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
