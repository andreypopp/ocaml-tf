(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearch_outbound_connection__connection_properties__cross_cluster_search = {
  skip_unavailable : string option; [@option]  (** skip_unavailable *)
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__connection_properties__cross_cluster_search *)

type aws_opensearch_outbound_connection__connection_properties = {
  endpoint : string;  (** endpoint *)
  cross_cluster_search :
    aws_opensearch_outbound_connection__connection_properties__cross_cluster_search
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__connection_properties *)

type aws_opensearch_outbound_connection__local_domain_info = {
  domain_name : string;  (** domain_name *)
  owner_id : string;  (** owner_id *)
  region : string;  (** region *)
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__local_domain_info *)

type aws_opensearch_outbound_connection__remote_domain_info = {
  domain_name : string;  (** domain_name *)
  owner_id : string;  (** owner_id *)
  region : string;  (** region *)
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__remote_domain_info *)

type aws_opensearch_outbound_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__timeouts *)

type aws_opensearch_outbound_connection = {
  accept_connection : bool option; [@option]
      (** accept_connection *)
  connection_alias : string;  (** connection_alias *)
  connection_mode : string option; [@option]  (** connection_mode *)
  connection_properties :
    aws_opensearch_outbound_connection__connection_properties list;
  local_domain_info :
    aws_opensearch_outbound_connection__local_domain_info list;
  remote_domain_info :
    aws_opensearch_outbound_connection__remote_domain_info list;
  timeouts : aws_opensearch_outbound_connection__timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection *)

let aws_opensearch_outbound_connection ?accept_connection
    ?connection_mode ?timeouts ~connection_alias
    ~connection_properties ~local_domain_info ~remote_domain_info
    __resource_id =
  let __resource_type = "aws_opensearch_outbound_connection" in
  let __resource =
    {
      accept_connection;
      connection_alias;
      connection_mode;
      connection_properties;
      local_domain_info;
      remote_domain_info;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_outbound_connection __resource);
  ()
