(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_image = {
  description : string option; [@option]  (** description *)
  display_name : string option; [@option]  (** display_name *)
  image_name : string;  (** image_name *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_sagemaker_image *)

let aws_sagemaker_image ?description ?display_name ?tags ~image_name
    ~role_arn __resource_id =
  let __resource_type = "aws_sagemaker_image" in
  let __resource =
    { description; display_name; image_name; role_arn; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_image __resource);
  ()
