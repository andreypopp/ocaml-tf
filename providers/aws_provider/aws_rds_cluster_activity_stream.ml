(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_rds_cluster_activity_stream = {
  engine_native_audit_fields_included : bool option; [@option]
      (** engine_native_audit_fields_included *)
  kms_key_id : string;  (** kms_key_id *)
  mode : string;  (** mode *)
  resource_arn : string;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_rds_cluster_activity_stream *)

let aws_rds_cluster_activity_stream
    ?engine_native_audit_fields_included ~kms_key_id ~mode
    ~resource_arn __resource_id =
  let __resource_type = "aws_rds_cluster_activity_stream" in
  let __resource =
    {
      engine_native_audit_fields_included;
      kms_key_id;
      mode;
      resource_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_cluster_activity_stream __resource);
  ()