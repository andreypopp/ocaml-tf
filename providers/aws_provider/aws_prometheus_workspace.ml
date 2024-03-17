(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_prometheus_workspace__logging_configuration = {
  log_group_arn : string;  (** log_group_arn *)
}
[@@deriving yojson_of]
(** aws_prometheus_workspace__logging_configuration *)

type aws_prometheus_workspace = {
  alias : string option; [@option]  (** alias *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  logging_configuration :
    aws_prometheus_workspace__logging_configuration list;
}
[@@deriving yojson_of]
(** aws_prometheus_workspace *)

let aws_prometheus_workspace ?alias ?kms_key_arn ?tags
    ~logging_configuration __resource_id =
  let __resource_type = "aws_prometheus_workspace" in
  let __resource =
    { alias; kms_key_arn; tags; logging_configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_prometheus_workspace __resource);
  ()
