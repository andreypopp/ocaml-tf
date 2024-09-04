(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type distribution__ami_distribution_configuration__launch_permission

val distribution__ami_distribution_configuration__launch_permission :
  ?organization_arns:string prop list ->
  ?organizational_unit_arns:string prop list ->
  ?user_groups:string prop list ->
  ?user_ids:string prop list ->
  unit ->
  distribution__ami_distribution_configuration__launch_permission

type distribution__ami_distribution_configuration

val distribution__ami_distribution_configuration :
  ?ami_tags:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?kms_key_id:string prop ->
  ?name:string prop ->
  ?target_account_ids:string prop list ->
  ?launch_permission:
    distribution__ami_distribution_configuration__launch_permission
    list ->
  unit ->
  distribution__ami_distribution_configuration

type distribution__container_distribution_configuration__target_repository

val distribution__container_distribution_configuration__target_repository :
  repository_name:string prop ->
  service:string prop ->
  unit ->
  distribution__container_distribution_configuration__target_repository

type distribution__container_distribution_configuration

val distribution__container_distribution_configuration :
  ?container_tags:string prop list ->
  ?description:string prop ->
  target_repository:
    distribution__container_distribution_configuration__target_repository
    list ->
  unit ->
  distribution__container_distribution_configuration

type distribution__fast_launch_configuration__launch_template

val distribution__fast_launch_configuration__launch_template :
  ?launch_template_id:string prop ->
  ?launch_template_name:string prop ->
  ?launch_template_version:string prop ->
  unit ->
  distribution__fast_launch_configuration__launch_template

type distribution__fast_launch_configuration__snapshot_configuration

val distribution__fast_launch_configuration__snapshot_configuration :
  ?target_resource_count:float prop ->
  unit ->
  distribution__fast_launch_configuration__snapshot_configuration

type distribution__fast_launch_configuration

val distribution__fast_launch_configuration :
  ?max_parallel_launches:float prop ->
  ?launch_template:
    distribution__fast_launch_configuration__launch_template list ->
  ?snapshot_configuration:
    distribution__fast_launch_configuration__snapshot_configuration
    list ->
  account_id:string prop ->
  enabled:bool prop ->
  unit ->
  distribution__fast_launch_configuration

type distribution__launch_template_configuration

val distribution__launch_template_configuration :
  ?account_id:string prop ->
  ?default:bool prop ->
  launch_template_id:string prop ->
  unit ->
  distribution__launch_template_configuration

type distribution

val distribution :
  ?license_configuration_arns:string prop list ->
  ?ami_distribution_configuration:
    distribution__ami_distribution_configuration list ->
  ?container_distribution_configuration:
    distribution__container_distribution_configuration list ->
  region:string prop ->
  fast_launch_configuration:
    distribution__fast_launch_configuration list ->
  launch_template_configuration:
    distribution__launch_template_configuration list ->
  unit ->
  distribution

type aws_imagebuilder_distribution_configuration

val aws_imagebuilder_distribution_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  distribution:distribution list ->
  unit ->
  aws_imagebuilder_distribution_configuration

val yojson_of_aws_imagebuilder_distribution_configuration :
  aws_imagebuilder_distribution_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  distribution:distribution list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  distribution:distribution list ->
  string ->
  t Tf_core.resource
