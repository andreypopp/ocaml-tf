(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?project_description ?tags ?tags_all
    ~project_name ~service_catalog_provisioning_details __resource_id
    =
  let __resource_type = "aws_sagemaker_project" in
  let __resource =
    aws_sagemaker_project ?id ?project_description ?tags ?tags_all
      ~project_name ~service_catalog_provisioning_details ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_project __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       project_description =
         Prop.computed __resource_type __resource_id
           "project_description";
       project_id =
         Prop.computed __resource_type __resource_id "project_id";
       project_name =
         Prop.computed __resource_type __resource_id "project_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
