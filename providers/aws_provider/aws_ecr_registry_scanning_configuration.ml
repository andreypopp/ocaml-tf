(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecr_registry_scanning_configuration__rule__repository_filter = {
  filter : string prop;  (** filter *)
  filter_type : string prop;  (** filter_type *)
}
[@@deriving yojson_of]
(** aws_ecr_registry_scanning_configuration__rule__repository_filter *)

type aws_ecr_registry_scanning_configuration__rule = {
  scan_frequency : string prop;  (** scan_frequency *)
  repository_filter :
    aws_ecr_registry_scanning_configuration__rule__repository_filter
    list;
}
[@@deriving yojson_of]
(** aws_ecr_registry_scanning_configuration__rule *)

type aws_ecr_registry_scanning_configuration = {
  id : string prop option; [@option]  (** id *)
  scan_type : string prop;  (** scan_type *)
  rule : aws_ecr_registry_scanning_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_ecr_registry_scanning_configuration *)

let aws_ecr_registry_scanning_configuration ?id ~scan_type ~rule
    __resource_id =
  let __resource_type = "aws_ecr_registry_scanning_configuration" in
  let __resource = { id; scan_type; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_registry_scanning_configuration __resource);
  ()
