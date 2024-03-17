(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecr_replication_configuration__replication_configuration__rule__destination = {
  region : string;  (** region *)
  registry_id : string;  (** registry_id *)
}
[@@deriving yojson_of]
(** aws_ecr_replication_configuration__replication_configuration__rule__destination *)

type aws_ecr_replication_configuration__replication_configuration__rule__repository_filter = {
  filter : string;  (** filter *)
  filter_type : string;  (** filter_type *)
}
[@@deriving yojson_of]
(** aws_ecr_replication_configuration__replication_configuration__rule__repository_filter *)

type aws_ecr_replication_configuration__replication_configuration__rule = {
  destination :
    aws_ecr_replication_configuration__replication_configuration__rule__destination
    list;
  repository_filter :
    aws_ecr_replication_configuration__replication_configuration__rule__repository_filter
    list;
}
[@@deriving yojson_of]
(** aws_ecr_replication_configuration__replication_configuration__rule *)

type aws_ecr_replication_configuration__replication_configuration = {
  rule :
    aws_ecr_replication_configuration__replication_configuration__rule
    list;
}
[@@deriving yojson_of]
(** aws_ecr_replication_configuration__replication_configuration *)

type aws_ecr_replication_configuration = {
  id : string option; [@option]  (** id *)
  replication_configuration :
    aws_ecr_replication_configuration__replication_configuration list;
}
[@@deriving yojson_of]
(** aws_ecr_replication_configuration *)

let aws_ecr_replication_configuration ?id ~replication_configuration
    __resource_id =
  let __resource_type = "aws_ecr_replication_configuration" in
  let __resource = { id; replication_configuration } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_replication_configuration __resource);
  ()
