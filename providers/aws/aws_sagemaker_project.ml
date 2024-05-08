(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_catalog_provisioning_details__provisioning_parameter = {
  key : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_catalog_provisioning_details__provisioning_parameter) ->
  ()

let yojson_of_service_catalog_provisioning_details__provisioning_parameter
    =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : service_catalog_provisioning_details__provisioning_parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_catalog_provisioning_details__provisioning_parameter

[@@@deriving.end]

type service_catalog_provisioning_details = {
  path_id : string prop option; [@option]
  product_id : string prop;
  provisioning_artifact_id : string prop option; [@option]
  provisioning_parameter :
    service_catalog_provisioning_details__provisioning_parameter list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_catalog_provisioning_details) -> ()

let yojson_of_service_catalog_provisioning_details =
  (function
   | {
       path_id = v_path_id;
       product_id = v_product_id;
       provisioning_artifact_id = v_provisioning_artifact_id;
       provisioning_parameter = v_provisioning_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_provisioning_parameter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_catalog_provisioning_details__provisioning_parameter)
               v_provisioning_parameter
           in
           let bnd = "provisioning_parameter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_provisioning_artifact_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provisioning_artifact_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product_id in
         ("product_id", arg) :: bnds
       in
       let bnds =
         match v_path_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_catalog_provisioning_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_catalog_provisioning_details

[@@@deriving.end]

type aws_sagemaker_project = {
  id : string prop option; [@option]
  project_description : string prop option; [@option]
  project_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  service_catalog_provisioning_details :
    service_catalog_provisioning_details list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_project) -> ()

let yojson_of_aws_sagemaker_project =
  (function
   | {
       id = v_id;
       project_description = v_project_description;
       project_name = v_project_name;
       tags = v_tags;
       tags_all = v_tags_all;
       service_catalog_provisioning_details =
         v_service_catalog_provisioning_details;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_service_catalog_provisioning_details then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_catalog_provisioning_details)
               v_service_catalog_provisioning_details
           in
           let bnd = "service_catalog_provisioning_details", arg in
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
         let arg = yojson_of_prop yojson_of_string v_project_name in
         ("project_name", arg) :: bnds
       in
       let bnds =
         match v_project_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_description", arg in
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
       `Assoc bnds
    : aws_sagemaker_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_project

[@@@deriving.end]

let service_catalog_provisioning_details__provisioning_parameter
    ?value ~key () :
    service_catalog_provisioning_details__provisioning_parameter =
  { key; value }

let service_catalog_provisioning_details ?path_id
    ?provisioning_artifact_id ?(provisioning_parameter = [])
    ~product_id () : service_catalog_provisioning_details =
  {
    path_id;
    product_id;
    provisioning_artifact_id;
    provisioning_parameter;
  }

let aws_sagemaker_project ?id ?project_description ?tags ?tags_all
    ~project_name ~service_catalog_provisioning_details () :
    aws_sagemaker_project =
  {
    id;
    project_description;
    project_name;
    tags;
    tags_all;
    service_catalog_provisioning_details;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  project_description : string prop;
  project_id : string prop;
  project_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?project_description ?tags ?tags_all ~project_name
    ~service_catalog_provisioning_details __id =
  let __type = "aws_sagemaker_project" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       project_description =
         Prop.computed __type __id "project_description";
       project_id = Prop.computed __type __id "project_id";
       project_name = Prop.computed __type __id "project_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_project
        (aws_sagemaker_project ?id ?project_description ?tags
           ?tags_all ~project_name
           ~service_catalog_provisioning_details ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project_description ?tags ?tags_all
    ~project_name ~service_catalog_provisioning_details __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project_description ?tags ?tags_all ~project_name
      ~service_catalog_provisioning_details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
