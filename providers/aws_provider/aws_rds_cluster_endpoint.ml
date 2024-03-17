(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_cluster_endpoint = {
  cluster_endpoint_identifier : string;
      (** cluster_endpoint_identifier *)
  cluster_identifier : string;  (** cluster_identifier *)
  custom_endpoint_type : string;  (** custom_endpoint_type *)
  excluded_members : string list option; [@option]
      (** excluded_members *)
  id : string option; [@option]  (** id *)
  static_members : string list option; [@option]
      (** static_members *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_rds_cluster_endpoint *)

let aws_rds_cluster_endpoint ?excluded_members ?id ?static_members
    ?tags ?tags_all ~cluster_endpoint_identifier ~cluster_identifier
    ~custom_endpoint_type __resource_id =
  let __resource_type = "aws_rds_cluster_endpoint" in
  let __resource =
    {
      cluster_endpoint_identifier;
      cluster_identifier;
      custom_endpoint_type;
      excluded_members;
      id;
      static_members;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_cluster_endpoint __resource);
  ()
