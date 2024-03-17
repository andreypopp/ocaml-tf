(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_snapshot_copy_grant = {
  id : string option; [@option]  (** id *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  snapshot_copy_grant_name : string;  (** snapshot_copy_grant_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_copy_grant *)

let aws_redshift_snapshot_copy_grant ?id ?kms_key_id ?tags ?tags_all
    ~snapshot_copy_grant_name __resource_id =
  let __resource_type = "aws_redshift_snapshot_copy_grant" in
  let __resource =
    { id; kms_key_id; snapshot_copy_grant_name; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_snapshot_copy_grant __resource);
  ()
