(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_studio_lifecycle_config = {
  id : string prop option; [@option]  (** id *)
  studio_lifecycle_config_app_type : string prop;
      (** studio_lifecycle_config_app_type *)
  studio_lifecycle_config_content : string prop;
      (** studio_lifecycle_config_content *)
  studio_lifecycle_config_name : string prop;
      (** studio_lifecycle_config_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_sagemaker_studio_lifecycle_config *)

let aws_sagemaker_studio_lifecycle_config ?id ?tags ?tags_all
    ~studio_lifecycle_config_app_type
    ~studio_lifecycle_config_content ~studio_lifecycle_config_name
    __resource_id =
  let __resource_type = "aws_sagemaker_studio_lifecycle_config" in
  let __resource =
    {
      id;
      studio_lifecycle_config_app_type;
      studio_lifecycle_config_content;
      studio_lifecycle_config_name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_studio_lifecycle_config __resource);
  ()
