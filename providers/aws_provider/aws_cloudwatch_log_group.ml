(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_group = {
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  log_group_class : string prop option; [@option]
      (** log_group_class *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_group *)

let aws_cloudwatch_log_group ?id ?kms_key_id ?log_group_class ?name
    ?name_prefix ?retention_in_days ?skip_destroy ?tags ?tags_all
    __resource_id =
  let __resource_type = "aws_cloudwatch_log_group" in
  let __resource =
    {
      id;
      kms_key_id;
      log_group_class;
      name;
      name_prefix;
      retention_in_days;
      skip_destroy;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_group __resource);
  ()
