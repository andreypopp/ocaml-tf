(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type distribution__launch_template_configuration = {
  account_id : string prop;  (** account_id *)
  default : bool prop;  (** default *)
  launch_template_id : string prop;  (** launch_template_id *)
}

type distribution__fast_launch_configuration__snapshot_configuration = {
  target_resource_count : float prop;  (** target_resource_count *)
}

type distribution__fast_launch_configuration__launch_template = {
  launch_template_id : string prop;  (** launch_template_id *)
  launch_template_name : string prop;  (** launch_template_name *)
  launch_template_version : string prop;
      (** launch_template_version *)
}

type distribution__fast_launch_configuration = {
  account_id : string prop;  (** account_id *)
  enabled : bool prop;  (** enabled *)
  launch_template :
    distribution__fast_launch_configuration__launch_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** launch_template *)
  max_parallel_launches : float prop;  (** max_parallel_launches *)
  snapshot_configuration :
    distribution__fast_launch_configuration__snapshot_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** snapshot_configuration *)
}

type distribution__container_distribution_configuration__target_repository = {
  repository_name : string prop;  (** repository_name *)
  service : string prop;  (** service *)
}

type distribution__container_distribution_configuration = {
  container_tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** container_tags *)
  description : string prop;  (** description *)
  target_repository :
    distribution__container_distribution_configuration__target_repository
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target_repository *)
}

type distribution__ami_distribution_configuration__launch_permission = {
  organization_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** organization_arns *)
  organizational_unit_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** organizational_unit_arns *)
  user_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** user_groups *)
  user_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** user_ids *)
}

type distribution__ami_distribution_configuration = {
  ami_tags : (string * string prop) list;  (** ami_tags *)
  description : string prop;  (** description *)
  kms_key_id : string prop;  (** kms_key_id *)
  launch_permission :
    distribution__ami_distribution_configuration__launch_permission
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** launch_permission *)
  name : string prop;  (** name *)
  target_account_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target_account_ids *)
}

type distribution = {
  ami_distribution_configuration :
    distribution__ami_distribution_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ami_distribution_configuration *)
  container_distribution_configuration :
    distribution__container_distribution_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** container_distribution_configuration *)
  fast_launch_configuration :
    distribution__fast_launch_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** fast_launch_configuration *)
  launch_template_configuration :
    distribution__launch_template_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** launch_template_configuration *)
  license_configuration_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** license_configuration_arns *)
  region : string prop;  (** region *)
}

type aws_imagebuilder_distribution_configuration

val aws_imagebuilder_distribution_configuration :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
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
  distribution : distribution list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t Tf_core.resource
