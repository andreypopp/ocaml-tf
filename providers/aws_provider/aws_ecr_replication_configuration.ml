(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecr_replication_configuration__replication_configuration__rule__destination = {
  region : string prop;  (** region *)
  registry_id : string prop;  (** registry_id *)
}
[@@deriving yojson_of]
(** aws_ecr_replication_configuration__replication_configuration__rule__destination *)

type aws_ecr_replication_configuration__replication_configuration__rule__repository_filter = {
  filter : string prop;  (** filter *)
  filter_type : string prop;  (** filter_type *)
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
  id : string prop option; [@option]  (** id *)
  replication_configuration :
    aws_ecr_replication_configuration__replication_configuration list;
}
[@@deriving yojson_of]
(** aws_ecr_replication_configuration *)

type t = { id : string prop; registry_id : string prop }

let aws_ecr_replication_configuration ?id ~replication_configuration
    __resource_id =
  let __resource_type = "aws_ecr_replication_configuration" in
  let __resource =
    ({ id; replication_configuration }
      : aws_ecr_replication_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_replication_configuration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       registry_id =
         Prop.computed __resource_type __resource_id "registry_id";
     }
      : t)
  in
  __resource_attributes
