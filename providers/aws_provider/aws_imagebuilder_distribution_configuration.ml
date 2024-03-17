(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_distribution_configuration__distribution__ami_distribution_configuration__launch_permission = {
  organization_arns : string prop list option; [@option]
      (** organization_arns *)
  organizational_unit_arns : string prop list option; [@option]
      (** organizational_unit_arns *)
  user_groups : string prop list option; [@option]
      (** user_groups *)
  user_ids : string prop list option; [@option]  (** user_ids *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration__distribution__ami_distribution_configuration__launch_permission *)

type aws_imagebuilder_distribution_configuration__distribution__ami_distribution_configuration = {
  ami_tags : (string * string prop) list option; [@option]
      (** ami_tags *)
  description : string prop option; [@option]  (** description *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop option; [@option]  (** name *)
  target_account_ids : string prop list option; [@option]
      (** target_account_ids *)
  launch_permission :
    aws_imagebuilder_distribution_configuration__distribution__ami_distribution_configuration__launch_permission
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration__distribution__ami_distribution_configuration *)

type aws_imagebuilder_distribution_configuration__distribution__container_distribution_configuration__target_repository = {
  repository_name : string prop;  (** repository_name *)
  service : string prop;  (** service *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration__distribution__container_distribution_configuration__target_repository *)

type aws_imagebuilder_distribution_configuration__distribution__container_distribution_configuration = {
  container_tags : string prop list option; [@option]
      (** container_tags *)
  description : string prop option; [@option]  (** description *)
  target_repository :
    aws_imagebuilder_distribution_configuration__distribution__container_distribution_configuration__target_repository
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration__distribution__container_distribution_configuration *)

type aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration__launch_template = {
  launch_template_id : string prop option; [@option]
      (** launch_template_id *)
  launch_template_name : string prop option; [@option]
      (** launch_template_name *)
  launch_template_version : string prop option; [@option]
      (** launch_template_version *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration__launch_template *)

type aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration__snapshot_configuration = {
  target_resource_count : float prop option; [@option]
      (** target_resource_count *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration__snapshot_configuration *)

type aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration = {
  account_id : string prop;  (** account_id *)
  enabled : bool prop;  (** enabled *)
  max_parallel_launches : float prop option; [@option]
      (** max_parallel_launches *)
  launch_template :
    aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration__launch_template
    list;
  snapshot_configuration :
    aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration__snapshot_configuration
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration *)

type aws_imagebuilder_distribution_configuration__distribution__launch_template_configuration = {
  account_id : string prop option; [@option]  (** account_id *)
  default : bool prop option; [@option]  (** default *)
  launch_template_id : string prop;  (** launch_template_id *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration__distribution__launch_template_configuration *)

type aws_imagebuilder_distribution_configuration__distribution = {
  license_configuration_arns : string prop list option; [@option]
      (** license_configuration_arns *)
  region : string prop;  (** region *)
  ami_distribution_configuration :
    aws_imagebuilder_distribution_configuration__distribution__ami_distribution_configuration
    list;
  container_distribution_configuration :
    aws_imagebuilder_distribution_configuration__distribution__container_distribution_configuration
    list;
  fast_launch_configuration :
    aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration
    list;
  launch_template_configuration :
    aws_imagebuilder_distribution_configuration__distribution__launch_template_configuration
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration__distribution *)

type aws_imagebuilder_distribution_configuration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  distribution :
    aws_imagebuilder_distribution_configuration__distribution list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration *)

let aws_imagebuilder_distribution_configuration ?description ?id
    ?tags ?tags_all ~name ~distribution __resource_id =
  let __resource_type =
    "aws_imagebuilder_distribution_configuration"
  in
  let __resource =
    { description; id; name; tags; tags_all; distribution }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_distribution_configuration __resource);
  ()
