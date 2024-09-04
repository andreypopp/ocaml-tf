(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_devicefarm_instance_profile = {
  description : string prop option; [@option]
  exclude_app_packages_from_cleanup : string prop list option;
      [@option]
  id : string prop option; [@option]
  name : string prop;
  package_cleanup : bool prop option; [@option]
  reboot_after_use : bool prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_devicefarm_instance_profile) -> ()

let yojson_of_aws_devicefarm_instance_profile =
  (function
   | {
       description = v_description;
       exclude_app_packages_from_cleanup =
         v_exclude_app_packages_from_cleanup;
       id = v_id;
       name = v_name;
       package_cleanup = v_package_cleanup;
       reboot_after_use = v_reboot_after_use;
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
         match v_reboot_after_use with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reboot_after_use", arg in
             bnd :: bnds
       in
       let bnds =
         match v_package_cleanup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "package_cleanup", arg in
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
         match v_exclude_app_packages_from_cleanup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_app_packages_from_cleanup", arg in
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
    : aws_devicefarm_instance_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_devicefarm_instance_profile

[@@@deriving.end]

let aws_devicefarm_instance_profile ?description
    ?exclude_app_packages_from_cleanup ?id ?package_cleanup
    ?reboot_after_use ?tags ?tags_all ~name () :
    aws_devicefarm_instance_profile =
  {
    description;
    exclude_app_packages_from_cleanup;
    id;
    name;
    package_cleanup;
    reboot_after_use;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  exclude_app_packages_from_cleanup : string list prop;
  id : string prop;
  name : string prop;
  package_cleanup : bool prop;
  reboot_after_use : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?exclude_app_packages_from_cleanup ?id
    ?package_cleanup ?reboot_after_use ?tags ?tags_all ~name __id =
  let __type = "aws_devicefarm_instance_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       exclude_app_packages_from_cleanup =
         Prop.computed __type __id
           "exclude_app_packages_from_cleanup";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       package_cleanup = Prop.computed __type __id "package_cleanup";
       reboot_after_use =
         Prop.computed __type __id "reboot_after_use";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devicefarm_instance_profile
        (aws_devicefarm_instance_profile ?description
           ?exclude_app_packages_from_cleanup ?id ?package_cleanup
           ?reboot_after_use ?tags ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description
    ?exclude_app_packages_from_cleanup ?id ?package_cleanup
    ?reboot_after_use ?tags ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?exclude_app_packages_from_cleanup ?id
      ?package_cleanup ?reboot_after_use ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
