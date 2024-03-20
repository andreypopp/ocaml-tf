(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_networkmanager_connection = {
  connection_id : string prop;
  global_network_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_connection) -> ()

let yojson_of_aws_networkmanager_connection =
  (function
   | {
       connection_id = v_connection_id;
       global_network_id = v_global_network_id;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_global_network_id
         in
         ("global_network_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connection_id in
         ("connection_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_connection

[@@@deriving.end]

let aws_networkmanager_connection ?id ?tags ~connection_id
    ~global_network_id () : aws_networkmanager_connection =
  { connection_id; global_network_id; id; tags }

type t = {
  arn : string prop;
  connected_device_id : string prop;
  connected_link_id : string prop;
  connection_id : string prop;
  description : string prop;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~connection_id ~global_network_id __id =
  let __type = "aws_networkmanager_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       connected_device_id =
         Prop.computed __type __id "connected_device_id";
       connected_link_id =
         Prop.computed __type __id "connected_link_id";
       connection_id = Prop.computed __type __id "connection_id";
       description = Prop.computed __type __id "description";
       device_id = Prop.computed __type __id "device_id";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       link_id = Prop.computed __type __id "link_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_connection
        (aws_networkmanager_connection ?id ?tags ~connection_id
           ~global_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~connection_id ~global_network_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~connection_id ~global_network_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
