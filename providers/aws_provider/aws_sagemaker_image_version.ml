(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_image_version = {
  base_image : string;  (** base_image *)
  id : string option; [@option]  (** id *)
  image_name : string;  (** image_name *)
}
[@@deriving yojson_of]
(** aws_sagemaker_image_version *)

let aws_sagemaker_image_version ?id ~base_image ~image_name
    __resource_id =
  let __resource_type = "aws_sagemaker_image_version" in
  let __resource = { base_image; id; image_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_image_version __resource);
  ()
