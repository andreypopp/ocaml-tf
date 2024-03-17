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
    ?tags_all ~image_name ~role_arn __resource_id =
  let __resource_type = "aws_sagemaker_image" in
  let __resource =
    {
      description;
      display_name;
      id;
      image_name;
      role_arn;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_image __resource);
  ()
