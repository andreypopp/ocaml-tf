(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ecr_registry_scanning_configuration__rule__repository_filter = {
  filter : string;  (** filter *)
  filter_type : string;  (** filter_type *)
}
[@@deriving yojson_of]
(** aws_ecr_registry_scanning_configuration__rule__repository_filter *)

type aws_ecr_registry_scanning_configuration__rule = {
  scan_frequency : string;  (** scan_frequency *)
  repository_filter :
    aws_ecr_registry_scanning_configuration__rule__repository_filter
    list;
}
[@@deriving yojson_of]
(** aws_ecr_registry_scanning_configuration__rule *)

type aws_ecr_registry_scanning_configuration = {
  scan_type : string;  (** scan_type *)
  rule : aws_ecr_registry_scanning_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_ecr_registry_scanning_configuration *)

let aws_ecr_registry_scanning_configuration ~scan_type ~rule
    __resource_id =
  let __resource_type = "aws_ecr_registry_scanning_configuration" in
  let __resource = { scan_type; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_registry_scanning_configuration __resource);
  ()
