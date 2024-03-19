(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_image = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  image_name : string prop;  (** image_name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_sagemaker_image *)

let aws_sagemaker_image ?description ?display_name ?id ?tags
    ?tags_all ~image_name ~role_arn () : aws_sagemaker_image =
  {
    description;
    display_name;
    id;
    image_name;
    role_arn;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  image_name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?display_name ?id ?tags
    ?tags_all ~image_name ~role_arn __resource_id =
  let __resource_type = "aws_sagemaker_image" in
  let __resource =
    aws_sagemaker_image ?description ?display_name ?id ?tags
      ?tags_all ~image_name ~role_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_image __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       image_name =
         Prop.computed __resource_type __resource_id "image_name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
