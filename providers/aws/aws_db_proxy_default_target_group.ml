(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connection_pool_config = {
  connection_borrow_timeout : float prop option; [@option]
      (** connection_borrow_timeout *)
  init_query : string prop option; [@option]  (** init_query *)
  max_connections_percent : float prop option; [@option]
      (** max_connections_percent *)
  max_idle_connections_percent : float prop option; [@option]
      (** max_idle_connections_percent *)
  session_pinning_filters : string prop list option; [@option]
      (** session_pinning_filters *)
}
[@@deriving yojson_of]
(** connection_pool_config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_db_proxy_default_target_group = {
  db_proxy_name : string prop;  (** db_proxy_name *)
  id : string prop option; [@option]  (** id *)
  connection_pool_config : connection_pool_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_db_proxy_default_target_group *)

let connection_pool_config ?connection_borrow_timeout ?init_query
    ?max_connections_percent ?max_idle_connections_percent
    ?session_pinning_filters () : connection_pool_config =
  {
    connection_borrow_timeout;
    init_query;
    max_connections_percent;
    max_idle_connections_percent;
    session_pinning_filters;
  }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_db_proxy_default_target_group ?id ?timeouts ~db_proxy_name
    ~connection_pool_config () : aws_db_proxy_default_target_group =
  { db_proxy_name; id; connection_pool_config; timeouts }

type t = {
  arn : string prop;
  db_proxy_name : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~db_proxy_name ~connection_pool_config __id =
  let __type = "aws_db_proxy_default_target_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       db_proxy_name = Prop.computed __type __id "db_proxy_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_proxy_default_target_group
        (aws_db_proxy_default_target_group ?id ?timeouts
           ~db_proxy_name ~connection_pool_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~db_proxy_name
    ~connection_pool_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~db_proxy_name ~connection_pool_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
