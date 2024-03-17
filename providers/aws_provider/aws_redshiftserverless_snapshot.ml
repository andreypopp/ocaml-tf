(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_snapshot = {
  namespace_name : string;  (** namespace_name *)
  retention_period : float option; [@option]  (** retention_period *)
  snapshot_name : string;  (** snapshot_name *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_snapshot *)

let aws_redshiftserverless_snapshot ?retention_period ~namespace_name
    ~snapshot_name __resource_id =
  let __resource_type = "aws_redshiftserverless_snapshot" in
  let __resource =
    { namespace_name; retention_period; snapshot_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_snapshot __resource);
  ()
