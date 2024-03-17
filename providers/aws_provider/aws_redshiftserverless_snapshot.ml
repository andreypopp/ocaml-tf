(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_snapshot = {
  id : string prop option; [@option]  (** id *)
  namespace_name : string prop;  (** namespace_name *)
  retention_period : float prop option; [@option]
      (** retention_period *)
  snapshot_name : string prop;  (** snapshot_name *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_snapshot *)

let aws_redshiftserverless_snapshot ?id ?retention_period
    ~namespace_name ~snapshot_name __resource_id =
  let __resource_type = "aws_redshiftserverless_snapshot" in
  let __resource =
    { id; namespace_name; retention_period; snapshot_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_snapshot __resource);
  ()
