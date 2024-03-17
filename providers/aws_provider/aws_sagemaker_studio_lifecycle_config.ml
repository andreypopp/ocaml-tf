(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sagemaker_studio_lifecycle_config = {
  studio_lifecycle_config_app_type : string;
      (** studio_lifecycle_config_app_type *)
  studio_lifecycle_config_content : string;
      (** studio_lifecycle_config_content *)
  studio_lifecycle_config_name : string;
      (** studio_lifecycle_config_name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_sagemaker_studio_lifecycle_config *)

let aws_sagemaker_studio_lifecycle_config ?tags
    ~studio_lifecycle_config_app_type
    ~studio_lifecycle_config_content ~studio_lifecycle_config_name
    __resource_id =
  let __resource_type = "aws_sagemaker_studio_lifecycle_config" in
  let __resource =
    {
      studio_lifecycle_config_app_type;
      studio_lifecycle_config_content;
      studio_lifecycle_config_name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_studio_lifecycle_config __resource);
  ()
