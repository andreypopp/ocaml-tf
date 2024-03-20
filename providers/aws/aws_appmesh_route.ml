(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__grpc_route__action__weighted_target = {
  port : float prop option; [@option]  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** spec__grpc_route__action__weighted_target *)

type spec__grpc_route__action = {
  weighted_target : spec__grpc_route__action__weighted_target list;
}
[@@deriving yojson_of]
(** spec__grpc_route__action *)

type spec__grpc_route__match__metadata__match__range = {
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}
[@@deriving yojson_of]
(** spec__grpc_route__match__metadata__match__range *)

type spec__grpc_route__match__metadata__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
  regex : string prop option; [@option]  (** regex *)
  suffix : string prop option; [@option]  (** suffix *)
  range : spec__grpc_route__match__metadata__match__range list;
}
[@@deriving yojson_of]
(** spec__grpc_route__match__metadata__match *)

type spec__grpc_route__match__metadata = {
  invert : bool prop option; [@option]  (** invert *)
  name : string prop;  (** name *)
  match_ : spec__grpc_route__match__metadata__match list;
}
[@@deriving yojson_of]
(** spec__grpc_route__match__metadata *)

type spec__grpc_route__match = {
  method_name : string prop option; [@option]  (** method_name *)
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
  service_name : string prop option; [@option]  (** service_name *)
  metadata : spec__grpc_route__match__metadata list;
}
[@@deriving yojson_of]
(** spec__grpc_route__match *)

type spec__grpc_route__retry_policy__per_retry_timeout = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__grpc_route__retry_policy__per_retry_timeout *)

type spec__grpc_route__retry_policy = {
  grpc_retry_events : string prop list option; [@option]
      (** grpc_retry_events *)
  http_retry_events : string prop list option; [@option]
      (** http_retry_events *)
  max_retries : float prop;  (** max_retries *)
  tcp_retry_events : string prop list option; [@option]
      (** tcp_retry_events *)
  per_retry_timeout :
    spec__grpc_route__retry_policy__per_retry_timeout list;
}
[@@deriving yojson_of]
(** spec__grpc_route__retry_policy *)

type spec__grpc_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__grpc_route__timeout__idle *)

type spec__grpc_route__timeout__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__grpc_route__timeout__per_request *)

type spec__grpc_route__timeout = {
  idle : spec__grpc_route__timeout__idle list;
  per_request : spec__grpc_route__timeout__per_request list;
}
[@@deriving yojson_of]
(** spec__grpc_route__timeout *)

type spec__grpc_route = {
  action : spec__grpc_route__action list;
  match_ : spec__grpc_route__match list;
  retry_policy : spec__grpc_route__retry_policy list;
  timeout : spec__grpc_route__timeout list;
}
[@@deriving yojson_of]
(** spec__grpc_route *)

type spec__http2_route__action__weighted_target = {
  port : float prop option; [@option]  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** spec__http2_route__action__weighted_target *)

type spec__http2_route__action = {
  weighted_target : spec__http2_route__action__weighted_target list;
}
[@@deriving yojson_of]
(** spec__http2_route__action *)

type spec__http2_route__match__header__match__range = {
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}
[@@deriving yojson_of]
(** spec__http2_route__match__header__match__range *)

type spec__http2_route__match__header__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
  regex : string prop option; [@option]  (** regex *)
  suffix : string prop option; [@option]  (** suffix *)
  range : spec__http2_route__match__header__match__range list;
}
[@@deriving yojson_of]
(** spec__http2_route__match__header__match *)

type spec__http2_route__match__header = {
  invert : bool prop option; [@option]  (** invert *)
  name : string prop;  (** name *)
  match_ : spec__http2_route__match__header__match list;
}
[@@deriving yojson_of]
(** spec__http2_route__match__header *)

type spec__http2_route__match__path = {
  exact : string prop option; [@option]  (** exact *)
  regex : string prop option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** spec__http2_route__match__path *)

type spec__http2_route__match__query_parameter__match = {
  exact : string prop option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** spec__http2_route__match__query_parameter__match *)

type spec__http2_route__match__query_parameter = {
  name : string prop;  (** name *)
  match_ : spec__http2_route__match__query_parameter__match list;
}
[@@deriving yojson_of]
(** spec__http2_route__match__query_parameter *)

type spec__http2_route__match = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
  scheme : string prop option; [@option]  (** scheme *)
  header : spec__http2_route__match__header list;
  path : spec__http2_route__match__path list;
  query_parameter : spec__http2_route__match__query_parameter list;
}
[@@deriving yojson_of]
(** spec__http2_route__match *)

type spec__http2_route__retry_policy__per_retry_timeout = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__http2_route__retry_policy__per_retry_timeout *)

type spec__http2_route__retry_policy = {
  http_retry_events : string prop list option; [@option]
      (** http_retry_events *)
  max_retries : float prop;  (** max_retries *)
  tcp_retry_events : string prop list option; [@option]
      (** tcp_retry_events *)
  per_retry_timeout :
    spec__http2_route__retry_policy__per_retry_timeout list;
}
[@@deriving yojson_of]
(** spec__http2_route__retry_policy *)

type spec__http2_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__http2_route__timeout__idle *)

type spec__http2_route__timeout__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__http2_route__timeout__per_request *)

type spec__http2_route__timeout = {
  idle : spec__http2_route__timeout__idle list;
  per_request : spec__http2_route__timeout__per_request list;
}
[@@deriving yojson_of]
(** spec__http2_route__timeout *)

type spec__http2_route = {
  action : spec__http2_route__action list;
  match_ : spec__http2_route__match list;
  retry_policy : spec__http2_route__retry_policy list;
  timeout : spec__http2_route__timeout list;
}
[@@deriving yojson_of]
(** spec__http2_route *)

type spec__http_route__action__weighted_target = {
  port : float prop option; [@option]  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** spec__http_route__action__weighted_target *)

type spec__http_route__action = {
  weighted_target : spec__http_route__action__weighted_target list;
}
[@@deriving yojson_of]
(** spec__http_route__action *)

type spec__http_route__match__header__match__range = {
  end_ : float prop; [@key "end"]  (** end *)
  start : float prop;  (** start *)
}
[@@deriving yojson_of]
(** spec__http_route__match__header__match__range *)

type spec__http_route__match__header__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
  regex : string prop option; [@option]  (** regex *)
  suffix : string prop option; [@option]  (** suffix *)
  range : spec__http_route__match__header__match__range list;
}
[@@deriving yojson_of]
(** spec__http_route__match__header__match *)

type spec__http_route__match__header = {
  invert : bool prop option; [@option]  (** invert *)
  name : string prop;  (** name *)
  match_ : spec__http_route__match__header__match list;
}
[@@deriving yojson_of]
(** spec__http_route__match__header *)

type spec__http_route__match__path = {
  exact : string prop option; [@option]  (** exact *)
  regex : string prop option; [@option]  (** regex *)
}
[@@deriving yojson_of]
(** spec__http_route__match__path *)

type spec__http_route__match__query_parameter__match = {
  exact : string prop option; [@option]  (** exact *)
}
[@@deriving yojson_of]
(** spec__http_route__match__query_parameter__match *)

type spec__http_route__match__query_parameter = {
  name : string prop;  (** name *)
  match_ : spec__http_route__match__query_parameter__match list;
}
[@@deriving yojson_of]
(** spec__http_route__match__query_parameter *)

type spec__http_route__match = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
  scheme : string prop option; [@option]  (** scheme *)
  header : spec__http_route__match__header list;
  path : spec__http_route__match__path list;
  query_parameter : spec__http_route__match__query_parameter list;
}
[@@deriving yojson_of]
(** spec__http_route__match *)

type spec__http_route__retry_policy__per_retry_timeout = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__http_route__retry_policy__per_retry_timeout *)

type spec__http_route__retry_policy = {
  http_retry_events : string prop list option; [@option]
      (** http_retry_events *)
  max_retries : float prop;  (** max_retries *)
  tcp_retry_events : string prop list option; [@option]
      (** tcp_retry_events *)
  per_retry_timeout :
    spec__http_route__retry_policy__per_retry_timeout list;
}
[@@deriving yojson_of]
(** spec__http_route__retry_policy *)

type spec__http_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__http_route__timeout__idle *)

type spec__http_route__timeout__per_request = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__http_route__timeout__per_request *)

type spec__http_route__timeout = {
  idle : spec__http_route__timeout__idle list;
  per_request : spec__http_route__timeout__per_request list;
}
[@@deriving yojson_of]
(** spec__http_route__timeout *)

type spec__http_route = {
  action : spec__http_route__action list;
  match_ : spec__http_route__match list;
  retry_policy : spec__http_route__retry_policy list;
  timeout : spec__http_route__timeout list;
}
[@@deriving yojson_of]
(** spec__http_route *)

type spec__tcp_route__action__weighted_target = {
  port : float prop option; [@option]  (** port *)
  virtual_node : string prop;  (** virtual_node *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** spec__tcp_route__action__weighted_target *)

type spec__tcp_route__action = {
  weighted_target : spec__tcp_route__action__weighted_target list;
}
[@@deriving yojson_of]
(** spec__tcp_route__action *)

type spec__tcp_route__match = {
  port : float prop option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** spec__tcp_route__match *)

type spec__tcp_route__timeout__idle = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** spec__tcp_route__timeout__idle *)

type spec__tcp_route__timeout = {
  idle : spec__tcp_route__timeout__idle list;
}
[@@deriving yojson_of]
(** spec__tcp_route__timeout *)

type spec__tcp_route = {
  action : spec__tcp_route__action list;
  match_ : spec__tcp_route__match list;
  timeout : spec__tcp_route__timeout list;
}
[@@deriving yojson_of]
(** spec__tcp_route *)

type spec = {
  priority : float prop option; [@option]  (** priority *)
  grpc_route : spec__grpc_route list;
  http2_route : spec__http2_route list;
  http_route : spec__http_route list;
  tcp_route : spec__tcp_route list;
}
[@@deriving yojson_of]
(** spec *)

type aws_appmesh_route = {
  id : string prop option; [@option]  (** id *)
  mesh_name : string prop;  (** mesh_name *)
  mesh_owner : string prop option; [@option]  (** mesh_owner *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  virtual_router_name : string prop;  (** virtual_router_name *)
  spec : spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_route *)

let spec__grpc_route__action__weighted_target ?port ~virtual_node
    ~weight () : spec__grpc_route__action__weighted_target =
  { port; virtual_node; weight }

let spec__grpc_route__action ~weighted_target () :
    spec__grpc_route__action =
  { weighted_target }

let spec__grpc_route__match__metadata__match__range ~end_ ~start () :
    spec__grpc_route__match__metadata__match__range =
  { end_; start }

let spec__grpc_route__match__metadata__match ?exact ?prefix ?regex
    ?suffix ~range () : spec__grpc_route__match__metadata__match =
  { exact; prefix; regex; suffix; range }

let spec__grpc_route__match__metadata ?invert ~name ~match_ () :
    spec__grpc_route__match__metadata =
  { invert; name; match_ }

let spec__grpc_route__match ?method_name ?port ?prefix ?service_name
    ~metadata () : spec__grpc_route__match =
  { method_name; port; prefix; service_name; metadata }

let spec__grpc_route__retry_policy__per_retry_timeout ~unit ~value ()
    : spec__grpc_route__retry_policy__per_retry_timeout =
  { unit; value }

let spec__grpc_route__retry_policy ?grpc_retry_events
    ?http_retry_events ?tcp_retry_events ~max_retries
    ~per_retry_timeout () : spec__grpc_route__retry_policy =
  {
    grpc_retry_events;
    http_retry_events;
    max_retries;
    tcp_retry_events;
    per_retry_timeout;
  }

let spec__grpc_route__timeout__idle ~unit ~value () :
    spec__grpc_route__timeout__idle =
  { unit; value }

let spec__grpc_route__timeout__per_request ~unit ~value () :
    spec__grpc_route__timeout__per_request =
  { unit; value }

let spec__grpc_route__timeout ~idle ~per_request () :
    spec__grpc_route__timeout =
  { idle; per_request }

let spec__grpc_route ~action ~match_ ~retry_policy ~timeout () :
    spec__grpc_route =
  { action; match_; retry_policy; timeout }

let spec__http2_route__action__weighted_target ?port ~virtual_node
    ~weight () : spec__http2_route__action__weighted_target =
  { port; virtual_node; weight }

let spec__http2_route__action ~weighted_target () :
    spec__http2_route__action =
  { weighted_target }

let spec__http2_route__match__header__match__range ~end_ ~start () :
    spec__http2_route__match__header__match__range =
  { end_; start }

let spec__http2_route__match__header__match ?exact ?prefix ?regex
    ?suffix ~range () : spec__http2_route__match__header__match =
  { exact; prefix; regex; suffix; range }

let spec__http2_route__match__header ?invert ~name ~match_ () :
    spec__http2_route__match__header =
  { invert; name; match_ }

let spec__http2_route__match__path ?exact ?regex () :
    spec__http2_route__match__path =
  { exact; regex }

let spec__http2_route__match__query_parameter__match ?exact () :
    spec__http2_route__match__query_parameter__match =
  { exact }

let spec__http2_route__match__query_parameter ~name ~match_ () :
    spec__http2_route__match__query_parameter =
  { name; match_ }

let spec__http2_route__match ?method_ ?port ?prefix ?scheme ~header
    ~path ~query_parameter () : spec__http2_route__match =
  { method_; port; prefix; scheme; header; path; query_parameter }

let spec__http2_route__retry_policy__per_retry_timeout ~unit ~value
    () : spec__http2_route__retry_policy__per_retry_timeout =
  { unit; value }

let spec__http2_route__retry_policy ?http_retry_events
    ?tcp_retry_events ~max_retries ~per_retry_timeout () :
    spec__http2_route__retry_policy =
  {
    http_retry_events;
    max_retries;
    tcp_retry_events;
    per_retry_timeout;
  }

let spec__http2_route__timeout__idle ~unit ~value () :
    spec__http2_route__timeout__idle =
  { unit; value }

let spec__http2_route__timeout__per_request ~unit ~value () :
    spec__http2_route__timeout__per_request =
  { unit; value }

let spec__http2_route__timeout ~idle ~per_request () :
    spec__http2_route__timeout =
  { idle; per_request }

let spec__http2_route ~action ~match_ ~retry_policy ~timeout () :
    spec__http2_route =
  { action; match_; retry_policy; timeout }

let spec__http_route__action__weighted_target ?port ~virtual_node
    ~weight () : spec__http_route__action__weighted_target =
  { port; virtual_node; weight }

let spec__http_route__action ~weighted_target () :
    spec__http_route__action =
  { weighted_target }

let spec__http_route__match__header__match__range ~end_ ~start () :
    spec__http_route__match__header__match__range =
  { end_; start }

let spec__http_route__match__header__match ?exact ?prefix ?regex
    ?suffix ~range () : spec__http_route__match__header__match =
  { exact; prefix; regex; suffix; range }

let spec__http_route__match__header ?invert ~name ~match_ () :
    spec__http_route__match__header =
  { invert; name; match_ }

let spec__http_route__match__path ?exact ?regex () :
    spec__http_route__match__path =
  { exact; regex }

let spec__http_route__match__query_parameter__match ?exact () :
    spec__http_route__match__query_parameter__match =
  { exact }

let spec__http_route__match__query_parameter ~name ~match_ () :
    spec__http_route__match__query_parameter =
  { name; match_ }

let spec__http_route__match ?method_ ?port ?prefix ?scheme ~header
    ~path ~query_parameter () : spec__http_route__match =
  { method_; port; prefix; scheme; header; path; query_parameter }

let spec__http_route__retry_policy__per_retry_timeout ~unit ~value ()
    : spec__http_route__retry_policy__per_retry_timeout =
  { unit; value }

let spec__http_route__retry_policy ?http_retry_events
    ?tcp_retry_events ~max_retries ~per_retry_timeout () :
    spec__http_route__retry_policy =
  {
    http_retry_events;
    max_retries;
    tcp_retry_events;
    per_retry_timeout;
  }

let spec__http_route__timeout__idle ~unit ~value () :
    spec__http_route__timeout__idle =
  { unit; value }

let spec__http_route__timeout__per_request ~unit ~value () :
    spec__http_route__timeout__per_request =
  { unit; value }

let spec__http_route__timeout ~idle ~per_request () :
    spec__http_route__timeout =
  { idle; per_request }

let spec__http_route ~action ~match_ ~retry_policy ~timeout () :
    spec__http_route =
  { action; match_; retry_policy; timeout }

let spec__tcp_route__action__weighted_target ?port ~virtual_node
    ~weight () : spec__tcp_route__action__weighted_target =
  { port; virtual_node; weight }

let spec__tcp_route__action ~weighted_target () :
    spec__tcp_route__action =
  { weighted_target }

let spec__tcp_route__match ?port () : spec__tcp_route__match =
  { port }

let spec__tcp_route__timeout__idle ~unit ~value () :
    spec__tcp_route__timeout__idle =
  { unit; value }

let spec__tcp_route__timeout ~idle () : spec__tcp_route__timeout =
  { idle }

let spec__tcp_route ~action ~match_ ~timeout () : spec__tcp_route =
  { action; match_; timeout }

let spec ?priority ~grpc_route ~http2_route ~http_route ~tcp_route ()
    : spec =
  { priority; grpc_route; http2_route; http_route; tcp_route }

let aws_appmesh_route ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~virtual_router_name ~spec () : aws_appmesh_route =
  {
    id;
    mesh_name;
    mesh_owner;
    name;
    tags;
    tags_all;
    virtual_router_name;
    spec;
  }

type t = {
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  virtual_router_name : string prop;
}

let make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name
    ~virtual_router_name ~spec __id =
  let __type = "aws_appmesh_route" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       mesh_name = Prop.computed __type __id "mesh_name";
       mesh_owner = Prop.computed __type __id "mesh_owner";
       name = Prop.computed __type __id "name";
       resource_owner = Prop.computed __type __id "resource_owner";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       virtual_router_name =
         Prop.computed __type __id "virtual_router_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_route
        (aws_appmesh_route ?id ?mesh_owner ?tags ?tags_all ~mesh_name
           ~name ~virtual_router_name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~virtual_router_name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name
      ~virtual_router_name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
