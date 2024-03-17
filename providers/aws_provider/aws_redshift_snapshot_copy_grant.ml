(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_snapshot_copy_grant = {
  snapshot_copy_grant_name : string;  (** snapshot_copy_grant_name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_copy_grant *)

let aws_redshift_snapshot_copy_grant ?tags ~snapshot_copy_grant_name
    __resource_id =
  let __resource_type = "aws_redshift_snapshot_copy_grant" in
  let __resource = { snapshot_copy_grant_name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_snapshot_copy_grant __resource);
  ()
