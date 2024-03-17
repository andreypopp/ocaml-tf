(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_distribution_configuration__distribution__ami_distribution_configuration__launch_permission

type aws_imagebuilder_distribution_configuration__distribution__ami_distribution_configuration

type aws_imagebuilder_distribution_configuration__distribution__container_distribution_configuration__target_repository

type aws_imagebuilder_distribution_configuration__distribution__container_distribution_configuration

type aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration__launch_template

type aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration__snapshot_configuration

type aws_imagebuilder_distribution_configuration__distribution__fast_launch_configuration

type aws_imagebuilder_distribution_configuration__distribution__launch_template_configuration

type aws_imagebuilder_distribution_configuration__distribution
type aws_imagebuilder_distribution_configuration

type t = private {
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_imagebuilder_distribution_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  distribution:
    aws_imagebuilder_distribution_configuration__distribution list ->
  string ->
  t
