(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_opensearch_inbound_connection_accepter = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_inbound_connection_accepter *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_opensearch_inbound_connection_accepter ?id ?timeouts
    ~connection_id () : aws_opensearch_inbound_connection_accepter =
  { connection_id; id; timeouts }

type t = {
  connection_id : string prop;
  connection_status : string prop;
  id : string prop;
}

let make ?id ?timeouts ~connection_id __id =
  let __type = "aws_opensearch_inbound_connection_accepter" in
  let __attrs =
    ({
       connection_id = Prop.computed __type __id "connection_id";
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
      yojson_of_aws_opensearch_inbound_connection_accepter
        (aws_opensearch_inbound_connection_accepter ?id ?timeouts
           ~connection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~connection_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~connection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
