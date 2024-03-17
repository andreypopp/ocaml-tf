(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_neptune_cluster_endpoint = {
  cluster_endpoint_identifier : string;
      (** cluster_endpoint_identifier *)
  cluster_identifier : string;  (** cluster_identifier *)
  endpoint_type : string;  (** endpoint_type *)
  excluded_members : string list option; [@option]
      (** excluded_members *)
  static_members : string list option; [@option]
      (** static_members *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster_endpoint *)

let aws_neptune_cluster_endpoint ?excluded_members ?static_members
    ?tags ~cluster_endpoint_identifier ~cluster_identifier
    ~endpoint_type __resource_id =
  let __resource_type = "aws_neptune_cluster_endpoint" in
  let __resource =
    {
      cluster_endpoint_identifier;
      cluster_identifier;
      endpoint_type;
      excluded_members;
      static_members;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster_endpoint __resource);
  ()
