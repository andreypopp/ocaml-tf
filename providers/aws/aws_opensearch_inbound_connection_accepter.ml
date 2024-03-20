(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_opensearch_inbound_connection_accepter = {
  connection_id : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearch_inbound_connection_accepter) -> ()

let yojson_of_aws_opensearch_inbound_connection_accepter =
  (function
   | {
       connection_id = v_connection_id;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connection_id in
         ("connection_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_opensearch_inbound_connection_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearch_inbound_connection_accepter

[@@@deriving.end]

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
