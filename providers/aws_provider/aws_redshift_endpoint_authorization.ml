(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_endpoint_authorization = {
  account : string prop;  (** account *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  force_delete : bool prop option; [@option]  (** force_delete *)
  id : string prop option; [@option]  (** id *)
  vpc_ids : string prop list option; [@option]  (** vpc_ids *)
}
[@@deriving yojson_of]
(** aws_redshift_endpoint_authorization *)

let aws_redshift_endpoint_authorization ?force_delete ?id ?vpc_ids
    ~account ~cluster_identifier __resource_id =
  let __resource_type = "aws_redshift_endpoint_authorization" in
  let __resource =
    { account; cluster_identifier; force_delete; id; vpc_ids }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_endpoint_authorization __resource);
  ()
