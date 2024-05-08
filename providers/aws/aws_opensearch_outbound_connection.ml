(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connection_properties__cross_cluster_search = {
  skip_unavailable : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_properties__cross_cluster_search) -> ()

let yojson_of_connection_properties__cross_cluster_search =
  (function
   | { skip_unavailable = v_skip_unavailable } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skip_unavailable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "skip_unavailable", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connection_properties__cross_cluster_search ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_properties__cross_cluster_search

[@@@deriving.end]

type connection_properties = {
  cross_cluster_search :
    connection_properties__cross_cluster_search list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_properties) -> ()

let yojson_of_connection_properties =
  (function
   | { cross_cluster_search = v_cross_cluster_search } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_cross_cluster_search then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_connection_properties__cross_cluster_search)
               v_cross_cluster_search
           in
           let bnd = "cross_cluster_search", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : connection_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_properties

[@@@deriving.end]

type local_domain_info = {
  domain_name : string prop;
  owner_id : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : local_domain_info) -> ()

let yojson_of_local_domain_info =
  (function
   | {
       domain_name = v_domain_name;
       owner_id = v_owner_id;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner_id in
         ("owner_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : local_domain_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_local_domain_info

[@@@deriving.end]

type remote_domain_info = {
  domain_name : string prop;
  owner_id : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_domain_info) -> ()

let yojson_of_remote_domain_info =
  (function
   | {
       domain_name = v_domain_name;
       owner_id = v_owner_id;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner_id in
         ("owner_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : remote_domain_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_domain_info

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_opensearch_outbound_connection = {
  accept_connection : bool prop option; [@option]
  connection_alias : string prop;
  connection_mode : string prop option; [@option]
  id : string prop option; [@option]
  connection_properties : connection_properties list;
      [@default []] [@yojson_drop_default ( = )]
  local_domain_info : local_domain_info list;
      [@default []] [@yojson_drop_default ( = )]
  remote_domain_info : remote_domain_info list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearch_outbound_connection) -> ()

let yojson_of_aws_opensearch_outbound_connection =
  (function
   | {
       accept_connection = v_accept_connection;
       connection_alias = v_connection_alias;
       connection_mode = v_connection_mode;
       id = v_id;
       connection_properties = v_connection_properties;
       local_domain_info = v_local_domain_info;
       remote_domain_info = v_remote_domain_info;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_remote_domain_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_remote_domain_info)
               v_remote_domain_info
           in
           let bnd = "remote_domain_info", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_local_domain_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_local_domain_info)
               v_local_domain_info
           in
           let bnd = "local_domain_info", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_connection_properties then bnds
         else
           let arg =
             (yojson_of_list yojson_of_connection_properties)
               v_connection_properties
           in
           let bnd = "connection_properties", arg in
           bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_alias
         in
         ("connection_alias", arg) :: bnds
       in
       let bnds =
         match v_accept_connection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "accept_connection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_opensearch_outbound_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearch_outbound_connection

[@@@deriving.end]

let connection_properties__cross_cluster_search ?skip_unavailable ()
    : connection_properties__cross_cluster_search =
  { skip_unavailable }

let connection_properties ?(cross_cluster_search = []) () :
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
    ?connection_mode ?id ?(connection_properties = []) ?timeouts
    ~connection_alias ~local_domain_info ~remote_domain_info () :
    aws_opensearch_outbound_connection =
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
  tf_name : string;
  accept_connection : bool prop;
  connection_alias : string prop;
  connection_mode : string prop;
  connection_status : string prop;
  id : string prop;
}

let make ?accept_connection ?connection_mode ?id
    ?(connection_properties = []) ?timeouts ~connection_alias
    ~local_domain_info ~remote_domain_info __id =
  let __type = "aws_opensearch_outbound_connection" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?connection_mode ?id ~connection_properties ?timeouts
           ~connection_alias ~local_domain_info ~remote_domain_info
           ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_connection ?connection_mode ?id
    ?(connection_properties = []) ?timeouts ~connection_alias
    ~local_domain_info ~remote_domain_info __id =
  let (r : _ Tf_core.resource) =
    make ?accept_connection ?connection_mode ?id
      ~connection_properties ?timeouts ~connection_alias
      ~local_domain_info ~remote_domain_info __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
