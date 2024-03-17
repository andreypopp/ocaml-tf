(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_image = {
  description : string option; [@option]  (** description *)
  display_name : string option; [@option]  (** display_name *)
  id : string option; [@option]  (** id *)
  image_name : string;  (** image_name *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
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
