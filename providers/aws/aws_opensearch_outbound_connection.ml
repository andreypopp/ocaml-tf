(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connection_properties__cross_cluster_search = {
  skip_unavailable : string prop option; [@option]
      (** skip_unavailable *)
}
[@@deriving yojson_of]
(** connection_properties__cross_cluster_search *)

type connection_properties = {
  cross_cluster_search :
    connection_properties__cross_cluster_search list;
}
[@@deriving yojson_of]
(** connection_properties *)

type local_domain_info = {
  domain_name : string prop;  (** domain_name *)
  owner_id : string prop;  (** owner_id *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** local_domain_info *)

type remote_domain_info = {
  domain_name : string prop;  (** domain_name *)
  owner_id : string prop;  (** owner_id *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** remote_domain_info *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_opensearch_outbound_connection = {
  accept_connection : bool prop option; [@option]
      (** accept_connection *)
  connection_alias : string prop;  (** connection_alias *)
  connection_mode : string prop option; [@option]
      (** connection_mode *)
  id : string prop option; [@option]  (** id *)
  connection_properties : connection_properties list;
  local_domain_info : local_domain_info list;
  remote_domain_info : remote_domain_info list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_outbound_connection *)

let connection_properties__cross_cluster_search ?skip_unavailable ()
    : connection_properties__cross_cluster_search =
  { skip_unavailable }

let connection_properties ~cross_cluster_search () :
    connection_properties =
  { cross_cluster_search }

let local_domain_info ~domain_name ~owner_id ~region () :
    local_domain_info =
  { domain_name; owner_id; region }

let remote_domain_info ~domain_name ~owner_id ~region () :
    remote_domain_info =
  { domain_name; owner_id; region }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_opensearch_outbound_connection ?accept_connection
    ?connection_mode ?id ?timeouts ~connection_alias
    ~connection_properties ~local_domain_info ~remote_domain_info ()
    : aws_opensearch_outbound_connection =
  {
    accept_connection;
    connection_alias;
    connection_mode;
    id;
    connection_properties;
    local_domain_info;
    remote_domain_info;
    timeouts;
  }

type t = {
  accept_connection : bool prop;
  connection_alias : string prop;
  connection_mode : string prop;
  connection_status : string prop;
  id : string prop;
}

let make ?accept_connection ?connection_mode ?id ?timeouts
    ~connection_alias ~connection_properties ~local_domain_info
    ~remote_domain_info __id =
  let __type = "aws_opensearch_outbound_connection" in
  let __attrs =
    ({
       accept_connection =
         Prop.computed __type __id "accept_connection";
       connection_alias =
         Prop.computed __type __id "connection_alias";
       connection_mode = Prop.computed __type __id "connection_mode";
       connection_status =
         Prop.computed __type __id "connection_status";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearch_outbound_connection
        (aws_opensearch_outbound_connection ?accept_connection
           ?connection_mode ?id ?timeouts ~connection_alias
           ~connection_properties ~local_domain_info
           ~remote_domain_info ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_connection ?connection_mode ?id
    ?timeouts ~connection_alias ~connection_properties
    ~local_domain_info ~remote_domain_info __id =
  let (r : _ Tf_core.resource) =
    make ?accept_connection ?connection_mode ?id ?timeouts
      ~connection_alias ~connection_properties ~local_domain_info
      ~remote_domain_info __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
