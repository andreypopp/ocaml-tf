(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sagemaker_project__service_catalog_provisioning_details__provisioning_parameter = {
  key : string;  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_project__service_catalog_provisioning_details__provisioning_parameter *)

type aws_sagemaker_project__service_catalog_provisioning_details = {
  path_id : string option; [@option]  (** path_id *)
  product_id : string;  (** product_id *)
  provisioning_artifact_id : string option; [@option]
      (** provisioning_artifact_id *)
  provisioning_parameter :
    aws_sagemaker_project__service_catalog_provisioning_details__provisioning_parameter
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_project__service_catalog_provisioning_details *)

type aws_sagemaker_project = {
  project_description : string option; [@option]
      (** project_description *)
  project_name : string;  (** project_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  service_catalog_provisioning_details :
    aws_sagemaker_project__service_catalog_provisioning_details list;
}
[@@deriving yojson_of]
(** aws_sagemaker_project *)

let aws_sagemaker_project ?project_description ?tags ~project_name
    ~service_catalog_provisioning_details __resource_id =
  let __resource_type = "aws_sagemaker_project" in
  let __resource =
    {
      project_description;
      project_name;
      tags;
      service_catalog_provisioning_details;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_project __resource);
  ()
