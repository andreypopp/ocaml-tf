(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__grpc_route__action__target__virtual_service = {
  virtual_service_name : string prop;  (** virtual_service_name *)
}
[@@deriving yojson_of]
(** spec__grpc_route__action__target__virtual_service *)

type spec__grpc_route__action__target = {
  port : float prop option; [@option]  (** port *)
  virtual_service :
    spec__grpc_route__action__target__virtual_service list;
}
[@@deriving yojson_of]
(** spec__grpc_route__action__target *)

type spec__grpc_route__action = {
  target : spec__grpc_route__action__target list;
}
[@@deriving yojson_of]
(** spec__grpc_route__action *)

type spec__grpc_route__match = {
  port : float prop option; [@option]  (** port *)
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** spec__grpc_route__match *)

type spec__grpc_route = {
  action : spec__grpc_route__action list;
  match_ : spec__grpc_route__match list;
}
[@@deriving yojson_of]
(** spec__grpc_route *)

type spec__http2_route__action__rewrite__hostname = {
  default_target_hostname : string prop;
      (** default_target_hostname *)
}
[@@deriving yojson_of]
(** spec__http2_route__action__rewrite__hostname *)

type spec__http2_route__action__rewrite__path = {
  exact : string prop;  (** exact *)
}
[@@deriving yojson_of]
(** spec__http2_route__action__rewrite__path *)

type spec__http2_route__action__rewrite__prefix = {
  default_prefix : string prop option; [@option]
      (** default_prefix *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** spec__http2_route__action__rewrite__prefix *)

type spec__http2_route__action__rewrite = {
  hostname : spec__http2_route__action__rewrite__hostname list;
  path : spec__http2_route__action__rewrite__path list;
  prefix : spec__http2_route__action__rewrite__prefix list;
}
[@@deriving yojson_of]
(** spec__http2_route__action__rewrite *)

type spec__http2_route__action__target__virtual_service = {
  virtual_service_name : string prop;  (** virtual_service_name *)
}
[@@deriving yojson_of]
(** spec__http2_route__action__target__virtual_service *)

type spec__http2_route__action__target = {
  port : float prop option; [@option]  (** port *)
  virtual_service :
    spec__http2_route__action__target__virtual_service list;
}
[@@deriving yojson_of]
(** spec__http2_route__action__target *)

type spec__http2_route__action = {
  rewrite : spec__http2_route__action__rewrite list;
  target : spec__http2_route__action__target list;
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

type spec__http2_route__match__hostname = {
  exact : string prop option; [@option]  (** exact *)
  suffix : string prop option; [@option]  (** suffix *)
}
[@@deriving yojson_of]
(** spec__http2_route__match__hostname *)

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
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
  header : spec__http2_route__match__header list;
  hostname : spec__http2_route__match__hostname list;
  path : spec__http2_route__match__path list;
  query_parameter : spec__http2_route__match__query_parameter list;
}
[@@deriving yojson_of]
(** spec__http2_route__match *)

type spec__http2_route = {
  action : spec__http2_route__action list;
  match_ : spec__http2_route__match list;
}
[@@deriving yojson_of]
(** spec__http2_route *)

type spec__http_route__action__rewrite__hostname = {
  default_target_hostname : string prop;
      (** default_target_hostname *)
}
[@@deriving yojson_of]
(** spec__http_route__action__rewrite__hostname *)

type spec__http_route__action__rewrite__path = {
  exact : string prop;  (** exact *)
}
[@@deriving yojson_of]
(** spec__http_route__action__rewrite__path *)

type spec__http_route__action__rewrite__prefix = {
  default_prefix : string prop option; [@option]
      (** default_prefix *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** spec__http_route__action__rewrite__prefix *)

type spec__http_route__action__rewrite = {
  hostname : spec__http_route__action__rewrite__hostname list;
  path : spec__http_route__action__rewrite__path list;
  prefix : spec__http_route__action__rewrite__prefix list;
}
[@@deriving yojson_of]
(** spec__http_route__action__rewrite *)

type spec__http_route__action__target__virtual_service = {
  virtual_service_name : string prop;  (** virtual_service_name *)
}
[@@deriving yojson_of]
(** spec__http_route__action__target__virtual_service *)

type spec__http_route__action__target = {
  port : float prop option; [@option]  (** port *)
  virtual_service :
    spec__http_route__action__target__virtual_service list;
}
[@@deriving yojson_of]
(** spec__http_route__action__target *)

type spec__http_route__action = {
  rewrite : spec__http_route__action__rewrite list;
  target : spec__http_route__action__target list;
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

type spec__http_route__match__hostname = {
  exact : string prop option; [@option]  (** exact *)
  suffix : string prop option; [@option]  (** suffix *)
}
[@@deriving yojson_of]
(** spec__http_route__match__hostname *)

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
  port : float prop option; [@option]  (** port *)
  prefix : string prop option; [@option]  (** prefix *)
  header : spec__http_route__match__header list;
  hostname : spec__http_route__match__hostname list;
  path : spec__http_route__match__path list;
  query_parameter : spec__http_route__match__query_parameter list;
}
[@@deriving yojson_of]
(** spec__http_route__match *)

type spec__http_route = {
  action : spec__http_route__action list;
  match_ : spec__http_route__match list;
}
[@@deriving yojson_of]
(** spec__http_route *)

type spec = {
  priority : float prop option; [@option]  (** priority *)
  grpc_route : spec__grpc_route list;
  http2_route : spec__http2_route list;
  http_route : spec__http_route list;
}
[@@deriving yojson_of]
(** spec *)

type aws_appmesh_gateway_route = {
  id : string prop option; [@option]  (** id *)
  mesh_name : string prop;  (** mesh_name *)
  mesh_owner : string prop option; [@option]  (** mesh_owner *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  virtual_gateway_name : string prop;  (** virtual_gateway_name *)
  spec : spec list;
}
[@@deriving yojson_of]
(** aws_appmesh_gateway_route *)

let spec__grpc_route__action__target__virtual_service
    ~virtual_service_name () :
    spec__grpc_route__action__target__virtual_service =
  { virtual_service_name }

let spec__grpc_route__action__target ?port ~virtual_service () :
    spec__grpc_route__action__target =
  { port; virtual_service }

let spec__grpc_route__action ~target () : spec__grpc_route__action =
  { target }

let spec__grpc_route__match ?port ~service_name () :
    spec__grpc_route__match =
  { port; service_name }

let spec__grpc_route ~action ~match_ () : spec__grpc_route =
  { action; match_ }

let spec__http2_route__action__rewrite__hostname
    ~default_target_hostname () :
    spec__http2_route__action__rewrite__hostname =
  { default_target_hostname }

let spec__http2_route__action__rewrite__path ~exact () :
    spec__http2_route__action__rewrite__path =
  { exact }

let spec__http2_route__action__rewrite__prefix ?default_prefix ?value
    () : spec__http2_route__action__rewrite__prefix =
  { default_prefix; value }

let spec__http2_route__action__rewrite ~hostname ~path ~prefix () :
    spec__http2_route__action__rewrite =
  { hostname; path; prefix }

let spec__http2_route__action__target__virtual_service
    ~virtual_service_name () :
    spec__http2_route__action__target__virtual_service =
  { virtual_service_name }

let spec__http2_route__action__target ?port ~virtual_service () :
    spec__http2_route__action__target =
  { port; virtual_service }

let spec__http2_route__action ~rewrite ~target () :
    spec__http2_route__action =
  { rewrite; target }

let spec__http2_route__match__header__match__range ~end_ ~start () :
    spec__http2_route__match__header__match__range =
  { end_; start }

let spec__http2_route__match__header__match ?exact ?prefix ?regex
    ?suffix ~range () : spec__http2_route__match__header__match =
  { exact; prefix; regex; suffix; range }

let spec__http2_route__match__header ?invert ~name ~match_ () :
    spec__http2_route__match__header =
  { invert; name; match_ }

let spec__http2_route__match__hostname ?exact ?suffix () :
    spec__http2_route__match__hostname =
  { exact; suffix }

let spec__http2_route__match__path ?exact ?regex () :
    spec__http2_route__match__path =
  { exact; regex }

let spec__http2_route__match__query_parameter__match ?exact () :
    spec__http2_route__match__query_parameter__match =
  { exact }

let spec__http2_route__match__query_parameter ~name ~match_ () :
    spec__http2_route__match__query_parameter =
  { name; match_ }

let spec__http2_route__match ?port ?prefix ~header ~hostname ~path
    ~query_parameter () : spec__http2_route__match =
  { port; prefix; header; hostname; path; query_parameter }

let spec__http2_route ~action ~match_ () : spec__http2_route =
  { action; match_ }

let spec__http_route__action__rewrite__hostname
    ~default_target_hostname () :
    spec__http_route__action__rewrite__hostname =
  { default_target_hostname }

let spec__http_route__action__rewrite__path ~exact () :
    spec__http_route__action__rewrite__path =
  { exact }

let spec__http_route__action__rewrite__prefix ?default_prefix ?value
    () : spec__http_route__action__rewrite__prefix =
  { default_prefix; value }

let spec__http_route__action__rewrite ~hostname ~path ~prefix () :
    spec__http_route__action__rewrite =
  { hostname; path; prefix }

let spec__http_route__action__target__virtual_service
    ~virtual_service_name () :
    spec__http_route__action__target__virtual_service =
  { virtual_service_name }

let spec__http_route__action__target ?port ~virtual_service () :
    spec__http_route__action__target =
  { port; virtual_service }

let spec__http_route__action ~rewrite ~target () :
    spec__http_route__action =
  { rewrite; target }

let spec__http_route__match__header__match__range ~end_ ~start () :
    spec__http_route__match__header__match__range =
  { end_; start }

let spec__http_route__match__header__match ?exact ?prefix ?regex
    ?suffix ~range () : spec__http_route__match__header__match =
  { exact; prefix; regex; suffix; range }

let spec__http_route__match__header ?invert ~name ~match_ () :
    spec__http_route__match__header =
  { invert; name; match_ }

let spec__http_route__match__hostname ?exact ?suffix () :
    spec__http_route__match__hostname =
  { exact; suffix }

let spec__http_route__match__path ?exact ?regex () :
    spec__http_route__match__path =
  { exact; regex }

let spec__http_route__match__query_parameter__match ?exact () :
    spec__http_route__match__query_parameter__match =
  { exact }

let spec__http_route__match__query_parameter ~name ~match_ () :
    spec__http_route__match__query_parameter =
  { name; match_ }

let spec__http_route__match ?port ?prefix ~header ~hostname ~path
    ~query_parameter () : spec__http_route__match =
  { port; prefix; header; hostname; path; query_parameter }

let spec__http_route ~action ~match_ () : spec__http_route =
  { action; match_ }

let spec ?priority ~grpc_route ~http2_route ~http_route () : spec =
  { priority; grpc_route; http2_route; http_route }

let aws_appmesh_gateway_route ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~virtual_gateway_name ~spec () :
    aws_appmesh_gateway_route =
  {
    id;
    mesh_name;
    mesh_owner;
    name;
    tags;
    tags_all;
    virtual_gateway_name;
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
  virtual_gateway_name : string prop;
}

let make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name
    ~virtual_gateway_name ~spec __id =
  let __type = "aws_appmesh_gateway_route" in
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
       virtual_gateway_name =
         Prop.computed __type __id "virtual_gateway_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_gateway_route
        (aws_appmesh_gateway_route ?id ?mesh_owner ?tags ?tags_all
           ~mesh_name ~name ~virtual_gateway_name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~virtual_gateway_name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name
      ~virtual_gateway_name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
