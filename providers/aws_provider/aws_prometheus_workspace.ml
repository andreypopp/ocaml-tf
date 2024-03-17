(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_prometheus_workspace__logging_configuration = {
  log_group_arn : string prop;  (** log_group_arn *)
}
[@@deriving yojson_of]
(** aws_prometheus_workspace__logging_configuration *)

type aws_prometheus_workspace = {
  alias : string prop option; [@option]  (** alias *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  logging_configuration :
    aws_prometheus_workspace__logging_configuration list;
}
[@@deriving yojson_of]
(** aws_prometheus_workspace *)

let aws_prometheus_workspace ?alias ?id ?kms_key_arn ?tags ?tags_all
    ~logging_configuration __resource_id =
  let __resource_type = "aws_prometheus_workspace" in
  let __resource =
    { alias; id; kms_key_arn; tags; tags_all; logging_configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_prometheus_workspace __resource);
  ()
