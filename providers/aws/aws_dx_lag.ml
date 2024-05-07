(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_lag = {
  connection_id : string prop option; [@option]
  connections_bandwidth : string prop;
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  provider_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_lag) -> ()

let yojson_of_aws_dx_lag =
  (function
   | {
       connection_id = v_connection_id;
       connections_bandwidth = v_connections_bandwidth;
       force_destroy = v_force_destroy;
       id = v_id;
       location = v_location;
       name = v_name;
       provider_name = v_provider_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connections_bandwidth
         in
         ("connections_bandwidth", arg) :: bnds
       in
       let bnds =
         match v_connection_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dx_lag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_lag

[@@@deriving.end]

let aws_dx_lag ?connection_id ?force_destroy ?id ?provider_name ?tags
    ?tags_all ~connections_bandwidth ~location ~name () : aws_dx_lag
    =
  {
    connection_id;
    connections_bandwidth;
    force_destroy;
    id;
    location;
    name;
    provider_name;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  connection_id : string prop;
  connections_bandwidth : string prop;
  force_destroy : bool prop;
  has_logical_redundancy : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  location : string prop;
  name : string prop;
  owner_account_id : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?connection_id ?force_destroy ?id ?provider_name ?tags
    ?tags_all ~connections_bandwidth ~location ~name __id =
  let __type = "aws_dx_lag" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       connection_id = Prop.computed __type __id "connection_id";
       connections_bandwidth =
         Prop.computed __type __id "connections_bandwidth";
       force_destroy = Prop.computed __type __id "force_destroy";
       has_logical_redundancy =
         Prop.computed __type __id "has_logical_redundancy";
       id = Prop.computed __type __id "id";
       jumbo_frame_capable =
         Prop.computed __type __id "jumbo_frame_capable";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       provider_name = Prop.computed __type __id "provider_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_lag
        (aws_dx_lag ?connection_id ?force_destroy ?id ?provider_name
           ?tags ?tags_all ~connections_bandwidth ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?connection_id ?force_destroy ?id
    ?provider_name ?tags ?tags_all ~connections_bandwidth ~location
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?connection_id ?force_destroy ?id ?provider_name ?tags
      ?tags_all ~connections_bandwidth ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
