(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_catalog_provisioning_details__provisioning_parameter = {
  key : string prop;  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** service_catalog_provisioning_details__provisioning_parameter *)

type service_catalog_provisioning_details = {
  path_id : string prop option; [@option]  (** path_id *)
  product_id : string prop;  (** product_id *)
  provisioning_artifact_id : string prop option; [@option]
      (** provisioning_artifact_id *)
  provisioning_parameter :
    service_catalog_provisioning_details__provisioning_parameter list;
}
[@@deriving yojson_of]
(** service_catalog_provisioning_details *)

type aws_sagemaker_project = {
  id : string prop option; [@option]  (** id *)
  project_description : string prop option; [@option]
      (** project_description *)
  project_name : string prop;  (** project_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  service_catalog_provisioning_details :
    service_catalog_provisioning_details list;
}
[@@deriving yojson_of]
(** aws_sagemaker_project *)

let service_catalog_provisioning_details__provisioning_parameter
    ?value ~key () :
    service_catalog_provisioning_details__provisioning_parameter =
  { key; value }

let service_catalog_provisioning_details ?path_id
    ?provisioning_artifact_id ~product_id ~provisioning_parameter ()
    : service_catalog_provisioning_details =
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
