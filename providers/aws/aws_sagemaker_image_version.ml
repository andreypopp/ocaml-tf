(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_image_version = {
  base_image : string prop;  (** base_image *)
  id : string prop option; [@option]  (** id *)
  image_name : string prop;  (** image_name *)
}
[@@deriving yojson_of]
(** aws_sagemaker_image_version *)

let aws_sagemaker_image_version ?id ~base_image ~image_name () :
    aws_sagemaker_image_version =
  { base_image; id; image_name }

type t = {
  arn : string prop;
  base_image : string prop;
  container_image : string prop;
  id : string prop;
  image_arn : string prop;
  image_name : string prop;
  version : float prop;
}

let register ?tf_module ?id ~base_image ~image_name __resource_id =
  let __resource_type = "aws_sagemaker_image_version" in
  let __resource =
    aws_sagemaker_image_version ?id ~base_image ~image_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_image_version __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       base_image =
         Prop.computed __resource_type __resource_id "base_image";
       container_image =
         Prop.computed __resource_type __resource_id
           "container_image";
       id = Prop.computed __resource_type __resource_id "id";
       image_arn =
         Prop.computed __resource_type __resource_id "image_arn";
       image_name =
         Prop.computed __resource_type __resource_id "image_name";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
