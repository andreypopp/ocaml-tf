(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_neptune_cluster_endpoint = {
  cluster_endpoint_identifier : string prop;
      (** cluster_endpoint_identifier *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  endpoint_type : string prop;  (** endpoint_type *)
  excluded_members : string prop list option; [@option]
      (** excluded_members *)
  id : string prop option; [@option]  (** id *)
  static_members : string prop list option; [@option]
      (** static_members *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster_endpoint *)

let aws_neptune_cluster_endpoint ?excluded_members ?id
    ?static_members ?tags ?tags_all ~cluster_endpoint_identifier
    ~cluster_identifier ~endpoint_type __resource_id =
  let __resource_type = "aws_neptune_cluster_endpoint" in
  let __resource =
    {
      cluster_endpoint_identifier;
      cluster_identifier;
      endpoint_type;
      excluded_members;
      id;
      static_members;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster_endpoint __resource);
  ()
