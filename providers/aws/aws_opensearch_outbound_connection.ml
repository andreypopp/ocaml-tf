(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearch_outbound_connection__connection_properties__cross_cluster_search = {
  skip_unavailable : string prop option; [@option]
      (** skip_unavailable *)
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__connection_properties__cross_cluster_search *)

type aws_opensearch_outbound_connection__connection_properties = {
  endpoint : string prop;  (** endpoint *)
  cross_cluster_search :
    aws_opensearch_outbound_connection__connection_properties__cross_cluster_search
    list;
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__connection_properties *)

type aws_opensearch_outbound_connection__local_domain_info = {
  domain_name : string prop;  (** domain_name *)
  owner_id : string prop;  (** owner_id *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__local_domain_info *)

type aws_opensearch_outbound_connection__remote_domain_info = {
  domain_name : string prop;  (** domain_name *)
  owner_id : string prop;  (** owner_id *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__remote_domain_info *)

type aws_opensearch_outbound_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection__timeouts *)

type aws_opensearch_outbound_connection = {
  accept_connection : bool prop option; [@option]
      (** accept_connection *)
  connection_alias : string prop;  (** connection_alias *)
  connection_mode : string prop option; [@option]
      (** connection_mode *)
  id : string prop option; [@option]  (** id *)
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

type t = {
  accept_connection : bool prop;
  connection_alias : string prop;
  connection_mode : string prop;
  connection_status : string prop;
  id : string prop;
}

let aws_opensearch_outbound_connection ?accept_connection
    ?connection_mode ?id ?timeouts ~connection_alias
    ~connection_properties ~local_domain_info ~remote_domain_info
    __resource_id =
  let __resource_type = "aws_opensearch_outbound_connection" in
  let __resource =
    ({
       accept_connection;
       connection_alias;
       connection_mode;
       id;
       connection_properties;
       local_domain_info;
       remote_domain_info;
       timeouts;
     }
      : aws_opensearch_outbound_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_outbound_connection __resource);
  let __resource_attributes =
    ({
       accept_connection =
         Prop.computed __resource_type __resource_id
           "accept_connection";
       connection_alias =
         Prop.computed __resource_type __resource_id
           "connection_alias";
       connection_mode =
         Prop.computed __resource_type __resource_id
           "connection_mode";
       connection_status =
         Prop.computed __resource_type __resource_id
           "connection_status";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
