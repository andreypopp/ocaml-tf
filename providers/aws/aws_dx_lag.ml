(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_lag = {
  connection_id : string prop option; [@option]  (** connection_id *)
  connections_bandwidth : string prop;  (** connections_bandwidth *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  provider_name : string prop option; [@option]  (** provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dx_lag *)

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
